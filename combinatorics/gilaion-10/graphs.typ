#import "@preview/cetz:0.5.2"
#let radiallayout = (
  radius,
  items,
  draw_item,
  start: 90deg,
  end: auto,
) => {
  if end == auto {
    end = start + 360deg
  }
  import cetz.draw: *
  let n = items.len()
  let delta = (end - start) / n
  for i in range(n) {
    let item = items.at(i)
    draw_item((start + i * delta, radius), item)
  }
}
#let radialgraph = (
  directed: false,
  overlay: false,
  nodes: (),
  edges: (),
  radius: 1.8cm,
  radial-start: 90deg,
  radial-end: auto,
  text-args: (:),
  circle-args: (radius: 0.45cm),
  mark-args: (symbol: ">", fill: black, scale: 1.4),
  style-args: (:),
) => {
  cetz.canvas({
    import cetz.draw: *
    set-style(
      stroke: 0.65pt + black,
      ..style-args,
      circle: circle-args,
    )
    nodes = nodes.map(node-spec => {
      if type(node-spec) != array {
        (node-spec, node-spec)
      } else {
        node-spec.slice(0, 2)
      }
    })
    let draw-node = (pos, (node-id, node-label)) => {
      circle(pos, name: node-id)
      content(node-id, text(..text-args, node-label))
    }
    radiallayout(
      radius,
      nodes,
      draw-node,
      start: radial-start,
      end: radial-end,
    )
    let graph-matrix = (:)
    for (from-id, _) in nodes {
      graph-matrix.insert(from-id, (:))
      for (to-id, _) in nodes {
        graph-matrix.at(from-id).insert(to-id, (0, 0))
      }
    }
    edges = edges.map(((src, dst-spec)) => {
      if type(dst-spec) != array {
        dst-spec = (dst-spec,)
      }
      (src, dst-spec)
    })
    for (src, dst-spec) in edges {
      let node-ids = nodes.map(it => it.at(0))
      for node in (src, ..dst-spec) {
        if not node-ids.contains(node) {
          panic("Node " + node + "used in edge list but not found in list of nodes")
        }
      }
      for dst in dst-spec {
        graph-matrix.at(src).at(dst).at(0) += 1
      }
    }
    for (src, dest-spec) in edges {
      for dst in dest-spec {
        let (count, drawn) = graph-matrix.at(src).at(dst)
        let (rcount, rdrawn) = graph-matrix.at(dst).at(src)
        count += rcount
        drawn += rdrawn
        let reverse = false
        if src < dst {
          (src, dst) = (dst, src)
          reverse = true
        }
        let bend-step = 0.2cm
        let (offset, angle) = if calc.rem(count, 2) == 0 {
          let pair = calc.quo(drawn, 2) + 1
          if calc.rem(drawn, 2) == 0 {
            (bend-step * pair, 90deg)
          } else {
            (bend-step * pair, -90deg)
          }
        } else {
          let pair = calc.quo(drawn - 1, 2) + 1
          if drawn == 0 {
            (0, 0deg)
          } else if calc.rem(drawn - 1, 2) == 0 {
            (bend-step / 2 + bend-step * pair, 90deg)
          } else {
            (bend-step / 2 + bend-step * pair, -90deg)
          }
        }
        if directed {
          let key = if reverse {
            "start"
          } else {
            "end"
          }
          let mark-arg-dict = (start: (), end: ())
          mark-arg-dict.insert(key, mark-args)
          set-style(mark: mark-arg-dict)
        }
        if (overlay == true) or (offset == 0) or (angle == 0) {
          line(src, dst)
        } else {
          let midpoint = (
            (src, 50%, dst),
            offset,
            angle,
            dst,
          )
          intersections("i", src, dst, hide(arc-through(src, midpoint, dst)))
          arc-through("i.0", midpoint, "i.1")
        }
        graph-matrix.at(src).at(dst).at(1) += 1
        if reverse {
          (src, dst) = (dst, src)
        }
      }
    }
  })
}




#import "@preview/cetz:0.3.2" as cetz: canvas, draw
#import "@preview/cetz-plot:0.1.1": plot

#set page(width: auto, height: auto, margin: (x: 0em, y: 0em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.427pt, top-edge: "bounds", bottom-edge: "bounds");

#canvas(length: 1cm, {
  import draw: * 
  
  plot.plot(size: (8, 8), 
    axis-style: "school-book", 
    x-tick-step: 1,
    y-tick-step: 1,
    x-ticks: ((1/2, $1/2$), ), 
    y-ticks: ((1/2, $1/2$), ), 
    x-min: 0, x-max: 1.2,
    y-min: 0, y-max: 1.2,
    {
      plot.add-fill-between(
        domain: (0, 1),
        style: (stroke: rgb("#0000"), fill: rgb("#56ccc09c")),
        x => if x >= 1/2 { x - 1/2 } else { 0 },
        x => if x <= 1/2 { x + 1/2 } else { 1 }, 
      )
      plot.add(((0, 1), (1, 1)), style: (stroke: (paint: black, dash: "dashed")))
      plot.add(((1, 0), (1, 1)), style: (stroke: (paint: black, dash: "dashed")))

      plot.add(((1/2, 0.985), (1/2, 1.015)), style: (stroke: black))
      plot.add(((0.985, 1/2), (1.015, 1/2)), style: (stroke: black))
    }
  )

  draw.content((3.5, 3.5), $ |a-b| < 1/2 $)
})

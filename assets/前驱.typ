
#import "@preview/fletcher:0.5.2" as fletcher: node, edge

#set page(width: auto, height: auto, margin: (x: 0.1em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.427pt, top-edge: "bounds", bottom-edge: "bounds");

#align(center)[

#let u = 1
#fletcher.diagram(
  node-stroke: 1pt, 
  node-inset: 8pt, 
  edge-stroke: 1pt,  

  node((0, 0), $S_1$, radius: 1.5em), 
  
  edge("->", $a$), 
  node((-u, u), $S_2$, radius: 1.5em),

  let S4P = (-1.5*u, 2*u), 
  edge("->", $c$), 
  node(S4P, $S_4$, radius: 1.5em),

  let S5P = (0, 1.5*u), 
  edge((-u, u), S5P, "->", $d$), 
  node(S5P, $S_5$, radius: 1.5em),

  edge((0, 0), (u, u), "->", $b$), 
  node((u, u), $S_3$, radius: 1.5em),  
  
  edge(S4P, (0, 3*u), "->", $f$), 
  edge(S5P, (0, 3*u), "->", $g$), 
  edge((u, u), (0, 3*u), "->", $e$), 
  node((0, 3*u), $S_6$, radius: 1.5em),  
)
]

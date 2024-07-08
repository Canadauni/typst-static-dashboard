#let dashcell(inner) = {
  rect(
    width: 100%,
    height: 100%,
    radius: 2pt,
    stroke: 0.5pt + rgb("#C9C9C9"),
    inner
  )
}

#let dashboard(
  title: "Static Dashboard Template",
  grid-cols: 3,
  grid-rows: 3,
  font-size: 12,
  font-col: "3E4440",
  paper: "us-letter",
  flipped: true,
  margin: (x: 0.15in, y: 0.6in),
  header_col: "FFA500",
  logo_path: none,
  body
) = {
  set page(
    paper: paper,
    flipped: true,
    margin: margin,
    fill: rgb(header_col),
    background: place(horizon, rect(
      fill: white,
      height: 7.5in,
      width: 100%)
    ),
    header: text(
      font: "Calibri",
      weight: "bold",
      fill: white,
      size: 16pt,
      title
    ),
    header-ascent: 45%,
    footer:
      if logo_path == none {
        none } 
      else {
        align(left)[
          #image(logo_path, width: 15%)
        ]
      },
    footer-descent: 22%
  )
  set text(
    font: "Calibri",
    size: 12pt,
    fill: rgb(font-col)
  )
  set grid(
    columns: (1fr,) * grid-cols,
    rows: (1fr,) * grid-rows,
    column-gutter: 5pt,
    row-gutter: 5pt
  )
  body
}


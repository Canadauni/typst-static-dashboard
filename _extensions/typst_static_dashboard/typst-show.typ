// Typst custom formats typically consist of a 'typst-template.typ' (which is
// the source code for a typst template) and a 'typst-show.typ' which calls the
// template's function (forwarding Pandoc metadata values as required)
//
// This is an example 'typst-show.typ' file (based on the default template  
// that ships with Quarto). It calls the typst function named 'article' which 
// is defined in the 'typst-template.typ' file. 
//
// If you are creating or packaging a custom typst template you will likely
// want to replace this file and 'typst-template.typ' entirely. You can find
// documentation on creating typst templates here and some examples here:
//   - https://typst.app/docs/tutorial/making-a-template/
//   - https://github.com/typst/templates

#show: dashboard.with(
$if(title)$
  title: [$title$],
$endif$
$if(grid-cols)$
  grid-cols: $grid-cols$,
$endif$
$if(grid_rows)$
  grid_rows: "$grid_rows$",
$endif$
$if(paper)$
  paper: "$paper$",
$endif$
$if(flipped)$
  flipped: "$flipped$",
$endif$
$if(margin)$
  margin: ($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$),
$endif$
$if(header_col)$
  header_col: "$header_col$",
$endif$
)
# Typst_static_dashboard Format

requires quarto 1.5+

## Installing

```bash
quarto use template Canadauni/typst_static_dashboard
```

This will install the format extension and create an example qmd file
that you can use as a starting place for your document.

## Using

This is essentially a static dashboard format and is 100% still a work in progress. The goal with this is to create a format that will pump out a grid of boxes for various pieces of content whether that is text, computed figures or images.

Have a look at the `template.qmd` file to see how I have set it up but essentially a Lua filter on the backend is looking to build the dashboard elements by looking for a fence of `::::{.dashgrid}` and then each cell area is defined as being a `:::{.dashcell}`. If you aren't careful the graphs clip outside of the individual cells so make sure you are setting your `out.height` and `out.width` accordingly.

If you want to have your cells span columns or rows you can add that attribute to the dashcell fence like `:::{.dashcell colspan=2}` or `:::{.dashcell rowspan=2}`. Currently I'm not checking to see if your span is larger than the number of rows or columns available so keep that in mind when setting your spans.

I think future work involves making the features a bit more flexible:

  - Computing the header sizes and title position based on the margins
  - using the brand.yml quarto feature to set aesthetic features

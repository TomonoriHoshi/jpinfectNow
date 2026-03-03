#' Plot weekly epicurve from jpinfect::sex_prefecture
#'
#' @param disease Character. Disease name in the dataset.
#' @param prefecture Character. Prefecture name or "Total".
#' @param sex Character. "total", "male", "female".
#' @param year_from,year_to Integer. Optional year filter.
#' @param show_points Logical. Add points on bars.
#' @return A ggplot object.
#' 
#' @importFrom sex_prefecture jpinfect
#' @importFrom location_prefecture jpinfect
#' @importFrom bullet jpinfect
#' 
#' @export
jnow_epicurve <- function(disease,
                          prefecture = "Total",
                          sex = "total",
                          year_from = NULL,
                          year_to = NULL) {
  
  data("sex_prefecture", package = "jpinfect", envir = environment())
  
  df <- jpinfect::jpinfect_pivot(sex_prefecture)
  
  df <- df |>
    dplyr::filter(
      prefecture == prefecture,
      disease == disease,
      sex == sex
    )
  
  if (!is.null(year_from))
    df <- df |> dplyr::filter(year >= year_from)
  
  if (!is.null(year_to))
    df <- df |> dplyr::filter(year <= year_to)
  
  df <- df |> dplyr::filter(!is.na(cases))
  
  ggplot2::ggplot(df, ggplot2::aes(date, cases)) +
    ggplot2::geom_col() +
    ggplot2::labs(
      x = NULL,
      y = "Cases",
      title = disease
    )
}

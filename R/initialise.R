.onAttach <- function(libname, pkgname) {
  
  jpnow_sex <- jpinfect::jpinfect_pivot(jpinfect::sex_prefecture) |>
    tidyr::extract(
      col = disease,
      into = c("disease", "type"),
      regex = "^(.*) \\((.*)\\)$",
      remove = FALSE
    )
  
  assign("jpnow_sex", jpnow_sex, envir = .GlobalEnv)
}


.onAttach <- function(libname, pkgname) {
  
  jpnow_place <- jpinfect::jpinfect_pivot(jpinfect::place_prefecture) |>
    tidyr::extract(
      col = disease,
      into = c("disease", "type"),
      regex = "^(.*) \\((.*)\\)$",
      remove = FALSE
    )
  
  assign("jpnow_place", jpnow_place, envir = .GlobalEnv)
}


.onAttach <- function(libname, pkgname) {
  
  jpnow_bullet <- jpinfect::jpinfect_pivot(jpinfect::bullet) |>
    dplyr::filter(grepl("\\(weekly\\)$", disease)) |>
    dplyr::mutate(
      disease = sub(" \\(weekly\\)$", "", disease)
    )
  
  assign("jpnow_place", jpnow_place, envir = .GlobalEnv)
}


jnow_report <- function(disease, area = "Total") {
  
  p1 <- jnow_map(disease, area)
  p2 <- jnow_epicurve(disease, area)
  p3 <- jnow_season(disease, area)
  p4 <- jnow_location(disease, area)
  
  (p1 | p2) /
    (p3 | p4)
}
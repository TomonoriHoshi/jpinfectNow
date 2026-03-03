
jnow_season <- function(disease = "Scrub typhus", 
                        prefecture = "Total",
                        type = "total") {
  df <- jpnow_sex |> 
    select(prefecture, year, week, disease, type, cases) |> 
    filter(
    prefecture == .env$prefecture,
    disease == .env$disease,
    type == .env$type
  )
  
  return(df)
  
  # p1 <- df  |>  ggplot() + 
  #   aes(x = factor(week), y = cases, group = week) +
  #   geom_boxplot(colour = "#112446") +
  #   theme_minimal()
  # 
  # p2 <- ggplot(df, aes(x = week, y = cases)) +
  #   stat_summary(fun = median, geom = "line") +
  #   stat_summary(fun.data = median_hilow, geom = "ribbon", alpha = 0.2)
  # 
  # p3 <- ggplot(df, aes(x = week, y = cases, group = year)) +
  #   geom_line(alpha = 0.3) +
  #   theme_minimal()
  # 
  # return(p1)

  }


jnow_season()

jnow_season(diseas = "Scrub typhus")

jnow_season("Lyme disease")



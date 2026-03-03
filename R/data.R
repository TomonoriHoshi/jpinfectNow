#' Japanese Prefecture Master Table
#'
#' Internal master table defining prefectures and regions in
#' geographical north-to-south order.
#'
#' @keywords internal
prefecture_table <- data.frame(
  prefecture = c(
    "Total",
    "Hokkaido",
    "Aomori","Iwate","Miyagi","Akita","Yamagata","Fukushima",
    "Ibaraki","Tochigi","Gunma","Saitama","Chiba","Tokyo","Kanagawa",
    "Niigata","Toyama","Ishikawa","Fukui","Yamanashi","Nagano",
    "Gifu","Shizuoka","Aichi","Mie",
    "Shiga","Kyoto","Osaka","Hyogo","Nara","Wakayama",
    "Tottori","Shimane","Okayama","Hiroshima","Yamaguchi",
    "Tokushima","Kagawa","Ehime","Kochi",
    "Fukuoka","Saga","Nagasaki","Kumamoto","Oita","Miyazaki","Kagoshima",
    "Okinawa"
  ),
  region = c(
    "Total",
    "Hokkaido",
    rep("Tohoku", 6),
    rep("Kanto", 7),
    rep("Chubu", 9),
    rep("Kinki", 6),
    rep("Chugoku", 5),
    rep("Shikoku", 4),
    rep("Kyushu", 7),
    "Okinawa"
  ),
  stringsAsFactors = FALSE
)

# ordered prefecture vector
prefecture_en <- prefecture_table$prefecture

# lookup vector
region_lookup <- setNames(prefecture_table$region, prefecture_table$prefecture)

# region order
region_levels <- c(
  "Total","Hokkaido","Tohoku","Kanto",
  "Chubu","Kinki","Chugoku","Shikoku",
  "Kyushu","Okinawa"
)
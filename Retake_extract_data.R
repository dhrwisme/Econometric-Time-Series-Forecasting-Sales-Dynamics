library(fpp2)
library(zoo)

# Load the auscafe dataset
data("auscafe")

# Convert time series to data frame
df <- data.frame(
  Month = as.Date(as.yearmon(time(auscafe))),
  Cafe_Expenditure = as.numeric(auscafe)
)

# Filter from April 1982 to September 2017
df_filtered <- subset(df, Month >= as.Date("1982-04-01") & Month <= as.Date("2017-09-30"))

# Export to CSV
write.csv(df_filtered, "auscafe_1982_2017.csv", row.names = FALSE)
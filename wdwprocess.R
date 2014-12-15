library("ggplot2")

wdw <- read.delim("wdwattendance.txt", stringsAsFactors=FALSE)

# Overall plot
g <- ggplot(wdw, aes(x=Year, y = Millions, color = Park))
  g + 
  geom_point(aes(y = Total, col = "Total Attendance")) + 
  geom_point(aes(y = MK, col = "Magic Kingdom")) +
  geom_point(aes(y = EPCOT, col = "Epcot")) +
  geom_point(aes(y = Studios, col = "DHS")) +
  geom_point(aes(y = AK, col = "Animal Kingdom")) +
  geom_smooth(aes(y = Total, col = "Total"), method="lm")

ggsave(file="total.png") # Saving the plot to total.png



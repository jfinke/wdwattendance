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

library("dplyr")
library("reshape")

# Filtering out the older entries where Epcot and DHS was included in MK
wdw1993<-filter(wdw, Year >= 1993)
wdw1993$Total<-NULL # Getting rid of the Total column

wdw1993melted<-melt(wdw1993, id = "Year") # Melting the DF






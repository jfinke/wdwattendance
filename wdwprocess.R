library("ggplot2")

wdw <- read.delim("wdwattendance.txt", stringsAsFactors=FALSE)

ggplot(wdw, aes(x=Year, y = Millions, color = Park)) +
  geom_point(aes(y = Total, col = "Total Attendance")) + 
  geom_point(aes(y = MK, col = "Magic Kingdom"))
# here is some code to edit

library(GGally)
library(magrittr)

data(airquality)

pairs(airquality, panel = panel.smooth, main = "airquality data")
GGally::ggpairs(airquality, ggplot2::aes(color = Month %>% as.factor()))
GGally::ggpairs(iris, ggplot2::aes(color=Species)) 



## Quick example, with and without colour
data(flea)
ggpairs(flea, columns = 2:4)
ggpairs(flea, columns = 2:4, ggplot2::aes(colour = species))

plot(flea[,1]~flea[,2])

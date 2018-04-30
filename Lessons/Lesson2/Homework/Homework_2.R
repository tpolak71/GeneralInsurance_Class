# Find out, which __year__ was the __most terrific__ for portfolio you have identified as __most profitable__ during the lesson and 
# show it on the chart using `ggplot2` package. Write an explanation about your findings into the code as comment.
# __Commit__ it to your repository into `Lessons/Lesson2/Homework`.

## Code
library(dplyr)
library(ggplot2)
row.has.na <- apply(dt_KPI_raw, 1, function(x){any(is.na(x))}) 
dt_KPI_raw <- dt_KPI_raw[!row.has.na,]
dt_KPI_raw[dt_KPI_raw$Unit=="Unit7",] %>%  mutate(uwr=Premium-Expenses-Losses) %>% 
  group_by(Year) %>% 
  summarize(uwr = sum(uwr, na.rm = TRUE)) %>%
  arrange(uwr)%>%
ggplot(aes(x = reorder(Year, uwr), y = uwr)) + 
geom_col()



# Your Explanation about analysis:
# Worst year in terms of UWR was 2015 because of the worst performance (smallest number)
# 
# 

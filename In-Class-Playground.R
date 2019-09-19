library('nycflights13')
library('tidyverse')
dat <- flights
View(head(dat))

filter(dat, month == 2)
filter(dat, carrier == 'UA')

arrange(dat, arr_time)

select(dat, year, month)

select(dat, -year)

select(dat, flight, everything())

newdat <- mutate(dat, md = month + day)
View(newdat)

summarize(dat, mean_month = mean(month))

dat %>%
  group_by(carrier) %>%
  summarize(mean_month = mean(month))

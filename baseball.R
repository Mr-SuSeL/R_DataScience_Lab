library(nycflights13)
library(tidyverse)

# Badamy zależność między wynikami pałkarzy a średnią odbić piłki w baseball'u
# ba - umiejętności
# ab - szansa na uderzenie
batting <- as_tibble(Lahman::Batting)

batters <- batting %>%
  group_by(playerID) %>%
  summarize(
    ba = sum(H, na.rm = TRUE) / sum(AB, na.rm = TRUE),
    ab = sum(AB, na.rm = TRUE)
  )
batters %>% 
  filter(ab > 100) %>%
  ggplot(mapping = aes(x = ab, y = ba)) +
  geom_point() +
  geom_smooth(se = FALSE)






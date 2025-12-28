rm(list=ls())
library(tidyverse)
library(lubridate)

covid <- read_csv("C:/Users/Vikas/OneDrive/Desktop/covid_cases_deaths.csv")

covid$date <- as.Date(covid$date, format = "%d-%m-%Y")
head(covid$date)

selected_countries <- c("India","United States","Italy","Brazil","Africa")
covid_filtered <- covid %>%
  dplyr::filter(country %in% selected_countries)

covid_filtered <- covid_filtered %>%
  dplyr::filter(
    date >= as.Date("2020-03-01") &
    date <= as.Date("2023-03-01")
    )

p1<-ggplot(covid_filtered, aes(x=date,y=biweekly_deaths_per_million,color = country)) + 
  geom_line(size = 1)+
  labs(
    title = "COVID-19 Mortality Trends Across Selected Countries",
    x = "Date",
    y = "Bi Weekly Deaths per million",
    color = "Country"
  )+
  theme_minimal()
ggsave("plots/mortality_trends.png", p1, width = 10, height = 6, dpi = 300)

p2<-ggplot(covid_filtered, aes(x=date,y=cfr_100_cases,color=country))+
  geom_line(size=1)+
  labs(
    title = "COVID-19 Case Fatality Ratio (CFR) Trends Across Selected Countries",
    x = "Date",
    y = "CFR(%)",
    color = "Country"
  )+
  theme_minimal()
ggsave("plots/cfr_trends.png", p2, width = 10, height = 6, dpi = 300)

peak_cfr <- covid_filtered %>%
   group_by(country) %>%
   summarize(
     peak_cfr=max(cfr,na.rm=TRUE)
     )
peak_cfr

avg_cfr <- covid_filtered %>%
  group_by(country) %>%
  summarize(
    avg_cfr=mean(cfr,na.rm=TRUE)
  )
avg_cfr

p3<-ggplot(avg_cfr, aes(x=country,y=avg_cfr,fill=country))+
  geom_col(width=0.5)+
  labs(
    title = "Average COVID-19 Case Fatality Ratio (2020–2023)",
    x = "Country",
    y = "Average CFR(%)"
  )+
  theme_minimal()+
  theme(legend.position = "none")
ggsave("plots/average_cfr.png", p3, width = 10, height = 6, dpi = 300)

p4<-ggplot(peak_cfr, aes(x=country,y=peak_cfr,fill=country))+
  geom_col(width=0.5)+
  labs(
    title = "Peak COVID-19 Case Fatality Ratio (2020–2023)",
    x = "Country",
    y = "Peak CFR(%)"
  )+
  theme_minimal()+
  theme(legend.position = "none")
ggsave("plots/peak_cfr.png", p4, width = 10, height = 6, dpi = 300)
 

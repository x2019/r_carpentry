# Learning about the dplyr package


gapminder<- read.csv ("data/gapminder_data.csv")
View(gapminder)

# subset in base R
gapminder[gapminder$continent=="Africa","gdpPercap"]
mean(gapminder[gapminder$continent=="Africa","gdpPercap"])

# load our package
install.packages("dplyr")
library(dplyr)

# select columns
year_country_gdp <- gapminder %>% select(year,country,gdpPercap)

year_country_gdp_africa <- gapminder %>% select(year,country,gdpPercap)

year_country_gdp <- gapminder %>% filter (continent=="Africa") %>% 
  select(year,country,gdpPercap)

head(year_country_gdp)

# summarise by groups
gdp_by_continents <- gapminder %>% 
  group_by(continent) %>%
  summarise(mean_gdp = mean(gdpPercap))
gdp_by_continents


# calculate average life expectancy per country

lifeExp_per_country <- gapminder %>% 
  group_by(country) %>%
  summarise(mean_life = mean(lifeExp))
lifeExp_per_country

# using filter
lifeExp_per_country %>% filter(mean_life==min(mean_life))
lifeExp_per_country %>% filter(mean_life==max(mean_life))

# using arrange
lifeExp_per_country %>% arrange(mean_life)
lifeExp_per_country %>% arrange(desc(mean_life))

# using arrange and head
head(lifeExp_per_country %>% arrange(mean_life))
lifeExp_per_country %>% arrange(mean_life) %>% head()
lifeExp_per_country %>% arrange(mean_life) %>% tail()

#using base R insead
lifeExp_per_country[lifeExp_per_country$mean_life==max
                    (lifeExp_per_country$mean_life),]

# use count to find the nubmer of rows
gapminder %>%
  filter(year==2002) %>%
  count(continent)

gapminder %>%
  filter(year==1987) %>%
  count(continent)

unique(gapminder$year)
levels(gapminder$year)
unique(gapminder$country)
levels(gapminder$country)


# perform more than one function inside summarise
gapminder %>%
  group_by(continent) %>% 
  summarise(mean_life = mean(lifeExp),
            se_life = sd(lifeExp/sqrt(n())))
  
# using mutate
gdp_pop_summary <- gapminder %>%
  mutate(gdp_billions = gdpPercap*pop/10^9)
gdp_pop_summary  
head(gdp_pop_summary)

gdp_pop_summary <- gapminder %>%
  mutate(gdp_billions = gdpPercap*pop/10^9) %>% 
  group_by(continent,year) %>%
  summarise(mean_gdp_bill = mean(gdp_billions))
head(gdp_pop_summary)  



# new section -------------------------------------------------------------


# another section ----------------------------------------------------------





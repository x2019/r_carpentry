# friday 22 february 2019
# graph practice


gapminder <- read.csv("data/gapminder_data.csv", header=TRUE)
View(gapminder)

# data subsetting
# looking at row 1, column 1
gapminder[1,1]

# look at row 1
gapminder[1, ]

# preview top few lines
head(gapminder)

# preview bottom few lines
tail(gapminder)


# look at the middle
gapminder [900:905, ]


library("ggplot2")
ggplot(data = gapminder, aes(x=gdpPercap, y = lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x=year, y = lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x=year, y = lifeExp, color = continent)) + geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line() + geom_point()


ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + geom_line(aes(color=continent)) + geom_point()


# countries as characters instead of factors - add column of countries as characters instead of factors

countries_character <- as.character(gapminder$country)
gapminder2 <- cbind(gapminder, countries_character)

ggplot(data = gapminder2, aes(x=year, y=lifeExp, by=countries_character, color=continent)) + geom_line()

# plots came out the same for countries read as factor vs character

ggplot(data = gapminder, aes(x=year, y=lifeExp, color=continent)) + geom_line()

# try ploting year as factor here



ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + 
  geom_point() + geom_line(aes(color=continent))



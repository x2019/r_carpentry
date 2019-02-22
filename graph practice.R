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


ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent)) +
  geom_point()


# use scale function (change x axis), alpha function (transparency)

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent)) +
  geom_point(alpha=0.5) + scale_x_log10()


ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point(aes(alpha=continent)) + scale_x_log10()

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method = "lm")

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point(aes(color=continent)) + scale_x_log10() + geom_smooth(method = "lm")


ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method = "lm", size=.5)

# lower alpha values increase transparency

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point(alpha=.2) + scale_x_log10() + geom_smooth(method = "lm")

# manipulate color and size for different aspects of the graph

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point(color="blue", size=.5) + scale_x_log10() + 
  geom_smooth(method = "lm", color = "purple" , size=.5)


# manipulate shape of plot points

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color = continent)) +
  geom_point( size=5, shape = 17) + scale_x_log10() + 
  geom_smooth(method = "lm", color = "purple" , size=.5)


# multi-pannel figures 


starts.with<-substr(gapminder$country, start = 1, stop = 1)
az.countries<-gapminder[starts.with %in% c("A", "Z"), ]
ggplot(data = az.countries, aes(x=year, y=lifeExp, color=continent))+
  geom_line() + facet_wrap(~country)






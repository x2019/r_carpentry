cats<-data.frame(coat=c("calico", "black", "tabby"),weight=c(2.1,3.4,5.6), likes_string=c(1, 0, 1))
cats
write.csv(x=cats, file="data/feline.csv", row.names=FALSE)
cats<-read.csv(file="data/feline.csv")
cats
cats$weight
cats$coat
#we discovered the weight is 2kg too light
cats$weight+2
paste("my cat is", cats$coat)
cats$coat , cats$weight
typeof(cats$weight)
typeof(cats$coat)
x<-1+4i
typeof(x)
typeof("A")
file.show("data/feline2.csv")
cats<-read.csv(file="data/feline2.csv")
str(cats$coat)
my_vector<-vector(length=3)
my_vector
another_vector<-vector(mode = 'character', length = 3)
another_vector
str(another_vector)
str(cats$weight)
combine_vector<-c(2,6,3)
combine_vector
quiz_vector<-c(2,6,"3")
quiz_vector
character_vector<-c('2','4','6')
character_vector
character_coerce_to_number<-as.numeric(character_vector)
character_coerce_to_number
character_to_coerce_to_logic<-as.logical(character_vector)
character_to_coerce_to_logic
cats$like
cats
cats$like_coerce_to_logic<-as.logical(cats$like)
cats$like_coerce_to_logic
ab_vector<-c("a","b")
ab_vector
combine_example<-c(ab_vector, "swc")
combine_example
myseries<-1:10
myseries
seq(10)
seq(1,10, by=.1)
vector2<-seq(10)
head(vector2,n=4)
tail(vector2, n=4)
length(vector2)
class(vector2)
typeof(vector2)
my_example<-5:8
my_example
names(my_example)<-c("a","b","c","d")
my_example
str(cats$likes_string)
str(cats$coat)


age<- c(2,3,5)
age
cbind(cats,age)
cats<-cbind(cats, age)
cats
cbind(cats, age)
age<- c(2, 3, 5, 6)
age 
cbind(cats, age)
nrow(cats)
length(age)
newRow<- list("tortoiseshell", 3.3, TRUE, 9)
newRow
cats<- rbind(cats, newRow)
cats

levels(cats$coat)
levels(cats$coat)<- c(levels(cats$coat), "tortoiseshell")
cats<- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))
str(cats)
cats$coat <- as.character(cats$coat)
str(cats)
cats[-5, -6]



cats
cats<- read.csv("data/feline.csv")
cats
age<- c(2, 3, 5)
age


cats <- cbind(cats, age)
cats
newRow<- list("toroiseshell", 3.3, TRUE, 9)
cats
newRow
cats <- rbind(cats, newRow)
cats
levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
levels(cats$coat)
cats
cats$coat <- as.character(cats$coat)
str(cats)


human_age <- c(7*(cats$age))
human_age
human_age <- as.factor(human_age)
human_age
human_age <- numeric(human_age)
as.numeric(human_age)
human_age <- as.character(human_age)
human_age
as.factor(human_age)
human_age
as.numeric(human_age)
human_age <-factor(human_age)
human_age
as.numeric(human_age)

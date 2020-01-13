### Boxplot Renege Line

library("ggplot2")

length <- c(17,15,15,+ 
14,14,12, +
10,9,8, +
8,7,7, +
6,5,5, +
5,4,4,3)
renege <- c("All Lines", "All Lines","All Lines", +
"All Lines","All Lines","All Lines","All Lines", +
"All Lines","All Lines","All Lines","All Lines", +
"All Lines","All Lines","All Lines","All Lines", +
"All Lines","All Lines","All Lines","All Lines")
d <- data.frame("length" = length, "Renege" = renege)

b <- ggplot(d, aes(x=renege, y=length)) +
stat_boxplot(shape = 2, width = 0.2) +
theme_classic() +
labs(title="Length of Lines when Renege Occured", x="") +
labs(y="Number of People in Line")+
theme(axis.title.x = element_text(face="bold"), axis.text.x = element_text(face="bold")) +
theme(axis.title.y = element_text(face="bold"), axis.text.y = element_text(face="bold")) +
theme(title = element_text(face="bold")) +
coord_flip()
b

length <- c(17,15,14,+ 
8,7,5, +
8,4,10, +
9,12,15, +
14,6,5, +
3,5,4,7)

renege <- c("On Campus", "On Campus","On Campus", 
"On Campus","On Campus","On Campus",
"On Campus","On Campus","On Campus",
"On Campus","On Campus","On Campus",
"On Campus", "On Campus", "On Campus", 
"On Campus","On Campus","Off Campus","Off Campus")

d <- data.frame("length" = length, "Renege" = renege)
b <- ggplot(d, aes(x=renege, y=length)) +
stat_boxplot(shape = 2, width = 0.2) +
theme_classic() +
labs(title="Length of Lines when Renege Occured, On and Off-Campus Comparison", x="") +
labs(y="Number of People in Line")+
theme(axis.title.x = element_text(face="bold"), axis.text.x = element_text(face="bold")) +
theme(axis.title.y = element_text(face="bold"), axis.text.y = element_text(face="bold")) +
theme(title = element_text(face="bold")) +
coord_flip()
b



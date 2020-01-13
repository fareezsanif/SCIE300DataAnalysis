#SCIE 300 SI Data Collection


#Data collected from Excel sheets
#Number of renege normalized per minute
location <- c("Off Campus", "Off Campus", "Off Campus", "On Campus", "On Campus", "On Campus")
renegeNumber <- c(0.025974026, 0, 0, 0.184210526, 0.12, 0.085714286)

renegeData <- data.frame("renege" = 60*renegeNumber , "location" = location)
renegeData 

### MY EDIT
## Load the ggplot2 package first
library("ggplot2")
 
## Data and plot settings
p <- ggplot(renegeData, aes(x=location, y=renege, fill=location)) +
geom_dotplot(binaxis='y', stackdir='center') +
theme_classic() +
labs(title="Renege Comparison of Starbucks Off and On-Campus", x="Location") +
labs(y="Number of Renege Per Hour of Unstable Line") +
theme(axis.title.x = element_text(face="bold"), axis.text.x = element_text(face="bold")) +
theme(axis.title.y = element_text(face="bold"), axis.text.y = element_text(face="bold")) +
theme(title = element_text(face="bold")) +
theme(legend.position="none")
print(p)



location <- c("Off Campus", "Off Campus", "Off Campus", "On Campus", "On Campus", "On Campus")
Outlets <- c(11, 7, 5, 0, 0, 3)

LocData <- data.frame("renege" = Outlets , "location" = location)
LocData 

## Data and plot settings
p <- ggplot(LocData, aes(x=location, y=renege, fill=location)) +
geom_dotplot(binaxis='y', stackdir='center') +
theme_classic() +
labs(title="Number of Food Stores Nearby Starbucks Off and On-Campus", x="Location") +
labs(y="Number of Food Stores Nearby") +
theme(axis.title.x = element_text(face="bold"), axis.text.x = element_text(face="bold")) +
theme(axis.title.y = element_text(face="bold"), axis.text.y = element_text(face="bold")) +
theme(title = element_text(face="bold")) +
theme(legend.position="none")
print(p)



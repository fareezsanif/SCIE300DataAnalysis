## Renege rate vs Number of Outlets

library(ggplot2)

# Renege Rates Per Hour
rr <- c(0.025974026, 0, 0, 0.184210526, 0.12, 0.085714286)*60

## Number of outlets
o <- c(11, 7, 5, 0, 0, 3)

d <- data.frame("rr" = rr, "o" = o)
 
# basic scatterplot
p <- ggplot(d, aes(x=o, y=rr)) + 
    geom_point()+
geom_smooth(method=lm, se=FALSE) +
theme_classic() +
labs(title="Renege Rates vs Number of Food Outlets Nearby", x="Number of Outlets Nearby") +
labs(y="Renege Per Hour of Unstable Line") +
theme(axis.title.x = element_text(face="bold"), axis.text.x = element_text(face="bold")) +
theme(axis.title.y = element_text(face="bold"), axis.text.y = element_text(face="bold")) +
theme(title = element_text(face="bold")) +
theme(legend.position="none")
p

lm_eqn <- function(df){
    m <- lm(o ~ rr, df);
    eq <- substitute(italic(y) == a + b %.% italic(x)*","~~italic(r)^2~"="~r2, 
         list(a = format(coef(m)[1], digits = 2),
              b = format(coef(m)[2], digits = 2),
             r2 = format(summary(m)$r.squared, digits = 3)))
    as.character(as.expression(eq));
}

lm_eqn(d)

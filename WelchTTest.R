### Welch t Test

off <- c(0.025974026, 0, 0)*60
on <- c(0.184210526, 0.12, 0.085714286)*60

sd(off)
sd(on)
ttest = t.test(off,on)

ttest


offOutlets <- c(11, 7, 5)
onOutlets <- c(0, 0, 3)

t1 = t.test(offOutlets ,onOutlets)
t1

l1 <- c(17,15,14,+ 
8,7,5, +
8,4,10, +
9,12,15, +
14,6,5, +
3,5)

l2 <- c(4,7)

t2 = t.test(l1,l2)
t2
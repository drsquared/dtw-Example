library("dtw")

q1 <- c(1, 1, 1.2, 1.1, 1, 1, 1, 1.2, 1.2, 1.1, 1.2, 1.3)
q2 <- c(5, 5.1, 5.2, 5.1, 6, 5, 5, 5.2, 5.2, 5.1, 5.2, 5.3)
r1 <- c(1.3, 1, 1.2, 5.1, 6, 6, 4, 2.2, 1.2, 1.3, 1.1, 1.3)
plot(r1, type = "l", col = "red")
lines(q1,col="blue")
lines(q2,col="green")


m1 <- dtw(q1, r1, keep.internals =TRUE);
plot(m1)
plot(m1,type="threeway")
m1$stepsTaken
length(m1$stepsTaken)
m1$stepPattern
m1$distance

m2 <- dtw(q2, r1, keep.internals =TRUE);
plot(m2)
plot(m2,type="threeway")
m2$stepsTaken
length(m2$stepsTaken)
m2$stepPattern
m2$distance

t1 <- 1:10
t2 <- 10:1
t3 <- t1+1
mt <- dtw(t3, t1, keep.internals = T)
mt$distance

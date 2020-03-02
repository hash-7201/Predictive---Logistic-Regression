#Logistic regression

data<-read.csv(file.choose())
g<-glm(data$Admission ~ data$EXAM.1+data$EXAM.2,family=binomial)
print(g)
#predict
x1<-data$EXAM.1
x2<-data$EXAM.2

for(i in 1:length(x1))
{
  y<-x1[i]*0.2062 + x2[i]*0.2015-25.1613
  print(y)
  if(y>0.5)
    print("Admission into college granted")
  else
    print("Admission into college NOT granted")
}


#Visualisation
data=data.frame(data)
admission = data[data[3] == 1,]
no_admission=data[data[3]==0,]
plot(admission$EXAM.1,admission$EXAM.2,col='blue',pch='*',xlab='1st Exam',ylab="2nd Exam")
points(no_admission$EXAM.1,no_admission$EXAM.2, col="red",pch="*")
legend(1, 9, legend=c("Admission", "NO admission"),col=c("blue", "red"))  

plot(data$EXAM.1,data$Admission,pch='^')
plot(data$EXAM.2,data$Admission,pch='--')



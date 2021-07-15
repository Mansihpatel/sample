# library(datasets)
ir_data<- iris
head(ir_data)
str(ir_data)
levels(ir_data$Species)
sum(is.na(ir_data))
ir_data<-ir_data[1:100,]
set.seed(100)
samp<-sample(1:100,80)
ir_test<-ir_data[samp,]
ir_ctrl<-ir_data[-samp,]


y<-ir_test$Petal.Length; x<-ir_test$Sepal.Length

lfit<-lm(y~x, data = ir_ctrl)

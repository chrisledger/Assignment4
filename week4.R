a=1
b<-2
assign("c",3)

vector=c(2,NA,3,45,NA,34)

countna = sum(is.na(vector))



library("MASS")
detach("package:MASS")

# require and library functions both load packages
# but require returns TRUE if package already loaded
# so saves time reloading
# and allows code to stop running if install/load fails
if(require("coefplot")){
  print("coefplot is loaded correctly")
} else {
  print("trying to install coefplot")
  install.packages("coefplot")
  if(require(coefplot)){
    print("coefplot installed and loaded")
  } else {
    stop("could not install coefplot")
  }
}
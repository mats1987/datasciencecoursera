corr <- function(directory, threshold = 0) {
  
  files_list <- list.files(directory, full.names=TRUE) 
  dat <- numeric(0)
  
  for (i in 1:length(files_list)){
    x <- read.csv(files_list[i])
    x_completed <- x[complete.cases(x),]
    no_com_cases <- nrow(x_completed)
    if (no_com_cases > threshold){
        dat <- c(dat,cor(x_completed$sulfate,x_completed$nitrate))  
    }
      
  }
  
   if (length(dat) == 0) return(0)
  else return(dat)
}

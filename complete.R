complete <- function(directory, id = 1:332) {
        files_list <- list.files(directory, full.names=TRUE) 
        dat <- data.frame()
                
        for (i in 1:length(files_list)){
                dat <- rbind(dat,read.csv(files_list[i]))
                
        }
                
        completed_cases <- data.frame()
        
        for (j in 1:length(id) ) {
                
        
                
                newrow <- data.frame(id = id[j], nobs = nrow(dat[!complete.cases(dat) & dat$ID == id[j],]))
                completed_cases <- rbind(completed_cases,newrow)
                
                
        }
        
        completed_cases
        
        
        
        
}

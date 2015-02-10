pollutantmean <- function(directory,pollutant, id = 1:332) {
                
        files_list <- list.files(directory, full.names=TRUE) 
        dat <- data.frame()
        
        for (i in 1:length(files_list)){
                dat <- rbind(dat,read.csv(files_list[i]))
                
        }
        #dat_subset <- dat[which(dat[,"ID"] == id),]
        dat_subset <- subset(dat,ID == id)
        mean(dat_subset[,pollutant],na.rm = T)
        
}

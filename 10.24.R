library(data.table)

ages_2 <- c("<1 year","1 to 4", "5 to 9","10 to 14", "15 to 19","20 to 24", "25 to 29",
            "30 to 34", "35 to 39", "40 to 44", "45 to 49", "50 to 54", "55 to 59",        
            "60 to 64", "65 to 69", "70 to 74", "75 to 79", "80 to 84", "85 to 89", 
            "90 to 94", "95 plus")

dirname <- dir("/Users/zhiyi/Desktop/for Yupei/GBD/GBDpopulation/")  ###??ȡĿ¼?ļ??е??ļ?
file <- paste0("/Users/zhiyi/Desktop/for Yupei/GBD/GBDpopulation/",dirname)  ### ???ļ?????·??
var_name <- c("location_name","sex_name","year_id","age_group_name","val")  ##??????Ҫ?ı?��
GBD_population  <- data.frame(matrix(nrow=0,ncol=length(var_name))) 
names(GBD_population)=var_name
for (a in file) {
  data <- fread(a) %>% select(var_name) %>% 
    filter(age_group_name %in% ages_2)
  GBD_population <- rbind(GBD_population,data)
} 

df_EI=read.table('tao-all2.txt', na.strings = '.', header= FALSE)

df_EI$V5 = as.character(df_EI$V5)
df_EI$V5 <- as.Date(df_EI$V5, '%y%m%d')

df_EI
str(df_EI)

colnames(df_EI) = c("obs", "year", "month", "day", "date", "latitude", "longitude", "zon.winds", "mer.winds", "humidity", "air temp.", "s.s.temp.")
df_EI

plot(df_EI$longitude, df_EI$latitude)


df_EI$longitude = (df_EI$longitude) %% 360 

plot(df_EI$longitude, df_EI$latitude)

plot(df_EI$zon.winds,df_EI$mer.winds)


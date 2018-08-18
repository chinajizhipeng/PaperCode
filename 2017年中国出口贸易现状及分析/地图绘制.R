library(mapproj)
library(maps)
library(plyr)
library(ggplot2)
world_map <- map_data("world")
#提取国家代码
country_code <- unique(world_map['region'])
country_code['a'] <- 1
#读取出口国家
export <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\2017export.csv")
#读取出口国家代码并合并
export_code <- export['Partner']
export_code['b'] <- 2
code_merge <- merge(country_code,export_code,by.x = 'region',by.y = 'Partner',all = T)
#将出口国家代码补全
code_NA <- code_merge[!complete.cases(code_merge),]
write.csv(code_NA,"E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\na_code.csv")
#读取补全完数据
export_fixed <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\2017export_fixed.csv")
code_merge_all <- merge(country_code,export_fixed,by.x = 'region',by.y = 'iso',all = T)
code_merge_all['a'] <- NULL
code_merge_all[!complete.cases(code_merge_all),2] <- 0
#将国家代码转化为向量
country_list <- code_merge_all$region
world_map2 <- map_data("world",region = country_list)
mapData <- merge(world_map2,code_merge_all,by = 'region')
crime_map <- arrange(mapData,group,order)
ggplot(crime_map,aes(x=long,y=lat,group=group,fill=value))+
  geom_polygon(colour = "black")+
  scale_fill_gradient2(low = "red1",high = "red3")+
  theme(panel.background = element_blank())+
  theme(axis.title = element_blank())+
  theme(axis.text = element_blank())+
  labs(fill="出口值(百万美元)")


###分等级绘图
qa <- quantile(code_merge_all$value,c(0,0.3,0.5,0.8,0.9,0.95,0.99,0.994,1))
qa
crime_map$q <- cut(crime_map$value,qa,labels = c("0-30","30-500","500-5000","5000-20000",
                                                 "20000-40000","40000-100000","100000-200000",
                                                 "200000-400000"),include.lowest = T)
pal <- colorRampPalette(c("grey100","grey28"))(8)
pal
ggplot(crime_map,aes(x=long,y=lat,group=group,fill=q))+
  geom_polygon(colour = "black")+
  scale_fill_manual(values = pal)+
  theme(panel.background = element_blank())+
  theme(axis.title = element_blank())+
  theme(axis.text = element_blank())+
  labs(fill="出口额(百万美元)")+
  theme(legend.text = element_text(size = 20))+
  theme(legend.title = element_text(size = 20))
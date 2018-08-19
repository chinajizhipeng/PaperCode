library(plyr)
library(reshape2)
library(ggplot2)
#一带一路国家
num <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\iso_num.csv")
num2 <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\con_num.csv")
obor <- merge(num,num2,by = "CHN_name",all.y = T)
fix(obor)
obor$num <- NULL
write.csv(obor,"E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\obor.csv")
all_export <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\国家出口\\all.csv")
obor_export <- merge(all_export,obor,by.x = "iso",by.y="iso3",all.y = T)
obor_export2 <- obor_export[,c("iso","y","vs")]
obor_byyear <-ddply(
    obor_export2,
    .(y),
    summarise,
    export = sum(vs))
write.csv(obor_byyear,"E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\分组织\\obor_by_year.csv")
###分地区图
#增长率
area <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\分地区\\R图.csv")
area_long <- melt(area,id.vars = "iso")
levels(area_long$variable) <- c(2010:2017)
area_long1 <- subset(area_long,iso != "世界")
ggplot(area_long1,aes(x = variable,y = value,group = iso,shape = iso))+
  geom_line(size = 0.8)+
  geom_point(size = 2)+
  geom_hline(yintercept = 0)+
  labs(shape = "地区")+
  ylab("增长率")+
  theme(axis.title.x = element_blank())+
  theme(legend.text = element_text(size = 13))+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(colour = "black"))+
  theme(axis.text.x = element_text(size = rel(1.5),angle = 30,hjust=1,vjust=1))+
  theme(axis.title.y = element_text(size = 14))+
  theme(legend.position = "bottom")
#累计百分比
lj <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\分地区\\zuiji.csv")
lj_long <- melt(lj,id.vars = "iso")
levels(lj_long$variable) <- c(2010:2017)
lj_long_pro <- ddply(lj_long,"variable",transform,
                     percent = value/sum(value)*100)
ggplot(lj_long_pro,aes(x=variable,y=percent,fill = iso,group = iso))+
  geom_area(colour = "black",size = 0.2,alpha = 0.4)+
  scale_fill_brewer(palette = "Set3",breaks = rev(levels(lj_long_pro$iso)))+
  theme(panel.background = element_blank())+
  theme(axis.title.x = element_blank())+
  theme(axis.text.x = element_text(size = rel(1.5),angle = 30,hjust=1,vjust=1))+
  theme(legend.text = element_text(size = 13))+
  labs(fill="地区")+
  ylab("百分比")+
  theme(axis.title.y = element_text(size = 14))+
  theme(legend.position = "bottom")
#堆积面积
ggplot(lj_long,aes(x=variable,y=value,fill = iso,group = iso))+
  geom_area()+
  scale_fill_brewer(palette = "Pastel1")
###分商品
sp <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\分商品\\R.csv")
sp_long <- melt(sp,id.vars = "type")
levels(sp_long$variable) <- c(2010:2017)
#堆积图
ggplot(sp_long,aes(x=variable,y=value,fill = type,group = type))+
  geom_area()+
  scale_fill_brewer(palette = "Pastel1")+
  theme(panel.background = element_blank())+
  theme(axis.title.x = element_blank())+
  theme(axis.text.x = element_text(size = rel(1.5),angle = 30,hjust=1,vjust=1))+
  theme(legend.text = element_text(size = 13))+
  labs(fill="Lall商品分类")+
  ylab("出口额(亿美元)")+
  theme(axis.title.y = element_text(size = 14))+
  theme(legend.position = "bottom")
#堆积百分比
sp_long_pro <- ddply(sp_long,"variable",transform,
                     percent = value/sum(value)*100)
ggplot(sp_long_pro,aes(x=variable,y=percent,fill = type,group = type))+
  geom_area(colour = "black",size = 0.2,alpha = 0.4)+
  scale_fill_brewer(palette = "Set3",breaks = rev(levels(sp_long_pro$type)))+
  theme(panel.background = element_blank())+
  theme(axis.title.x = element_blank())+
  theme(axis.text.x = element_text(size = rel(1.5),angle = 30,hjust=1,vjust=1))+
  theme(legend.text = element_text(size = 13))+
  labs(fill="Lall商品分类")+
  ylab("百分比")+
  theme(axis.title.y = element_text(size = 14))+
  theme(legend.position = "top")+
  theme(legend.justification = "center")

###分组织
or <- read.csv("E:\\论文学习\\论文\\2017年中国贸易现状及未来展望\\数据\\分组织\\R1.csv")
or_long <- melt(or,id.vars = "ID")
levels(or_long$variable) <- c(2010:2017)
ggplot(or_long,aes(x = variable,y = value,group = ID,shape = ID))+
  geom_line(size = 0.8)+
  geom_point(size = 2)+
  geom_hline(yintercept = 0)+
  labs(shape = "区域组织")+
  ylab("增长率")+
  theme(axis.title.x = element_blank())+
  theme(legend.text = element_text(size = 13))+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(colour = "black"))+
  theme(axis.text.x = element_text(size = rel(1.5),angle = 30,hjust=1,vjust=1))+
  theme(axis.title.y = element_text(size = 14))+
  theme(legend.position = "bottom")















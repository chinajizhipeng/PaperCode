library(mapproj)
library(maps)
library(plyr)
ex_euro <- read.csv("E:\\论文学习\\论文代码\\孙子婷案例作业\\map.csv")
world_map <- map_data("world")
euro <- map_data("world",region = c("UK","Russia","Germany","Italy","France",
                                    "Belgium","Finland","Netherlands","Sweden",
                                    "Spain"))
euro_ex <- merge(euro,ex_euro,by.x = "region",by.y = "iso")
euro_ex_or <- arrange(euro_ex,group,order)
index <- duplicated(euro_ex_or$region)
label_iso <- euro_ex_or[!index,]
ggplot(euro_ex_or,aes(x=long,y=lat,group=group,fill=Export.value))+
  geom_polygon(colour = "black")+
  geom_text(data = label_iso,aes(x =long,y=lat,label=region),
            colour="black",size=5,
            vjust=0,nudge_y=0.5)+
  scale_fill_gradient2(low = "grey78",high = "grey37")+
  theme(panel.background = element_blank())+
  theme(axis.title = element_blank())+
  theme(axis.text = element_blank())+
  labs(fill="出口值(万人民币)")
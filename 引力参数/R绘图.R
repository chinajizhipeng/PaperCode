library(ggplot2)
#距离对贸易边际的影响
dis <- read.csv("C:\\Users\\123\\Desktop\\1.csv")
names(dis) <- c("ISIC","VALUE","MARGIN")
ggplot(dis,aes(x = reorder(ISIC,-VALUE),y=VALUE,fill=MARGIN))+
  geom_bar(stat = 'identity')+
  scale_x_discrete(position = "top")+
  coord_flip()+
  scale_y_reverse()+
  ylab('距离对贸易边际的影响')+
  labs(fill="贸易边际")+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(legend.position = c(0,1),
        legend.justification = c(-0.1,1.1))+
  scale_fill_grey(start = 0.5,end = 0.8,
                  labels = c("扩展边际","集约边际"))+
  theme(legend.text = element_text(size = 15))+
  theme(legend.title = element_text(size = 16))+
  theme(axis.title.y = element_blank())+
  theme(axis.ticks = element_blank())+
  theme(axis.line = element_line(colour = "black"))+
  theme(panel.background = element_blank())+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(size = rel(1.5)))
#关税对贸易边际的影响
tra <- read.csv("C:\\Users\\123\\Desktop\\2.csv")
names(tra) <- c("ISIC","VALUE","MARGIN")
ggplot(tra,aes(x = reorder(ISIC,-VALUE),y=VALUE,fill=MARGIN))+
  geom_bar(stat = 'identity')+
  scale_x_discrete(position = "top")+
  coord_flip()+
  scale_y_reverse()+
  ylab('关税对贸易边际的影响')+
  labs(fill="贸易边际")+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(legend.position = c(0,1),
        legend.justification = c(-0.1,1.1))+
  scale_fill_grey(start = 0.5,end = 0.8,
                  labels = c("扩展边际","集约边际"))+
  theme(legend.text = element_text(size = 15))+
  theme(legend.title = element_text(size = 16))+
  theme(axis.title.y = element_blank())+
  theme(axis.ticks = element_blank())+
  theme(axis.line = element_line(colour = "black"))+
  theme(panel.background = element_blank())+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(size = rel(1.5)))
  
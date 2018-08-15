library(ggplot2)
#距离对贸易边际的影响
dis <- read.csv("C:\\Users\\123\\Desktop\\1.csv")
names(dis) <- c("ISIC","VALUE","MARGIN")
ggplot(dis,aes(x = reorder(ISIC,-VALUE),y=VALUE,fill=MARGIN))+
  geom_bar(stat = 'identity')+
  coord_flip()+scale_y_reverse()+
  ylab('距离对贸易边际的影响')+
  xlab('ISIC制造业分类')+
  labs(fill="贸易边际")+
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank())+
  theme(legend.position = c(0,1),
        legend.justification = c(-0.1,1.1))+
  scale_fill_grey(start = 0.5,end = 0.8,
                  labels = c("扩展边际","集约边际"))
  
#关税对贸易边际的影响
tra <- read.csv("C:\\Users\\123\\Desktop\\2.csv")
names(tra) <- c("ISIC","VALUE","MARGIN")
ggplot(tra,aes(x = reorder(ISIC,-VALUE),y=VALUE,fill=MARGIN))+
  geom_bar(stat = 'identity')+
  coord_flip()+scale_y_reverse()+
  ylab('关税对贸易边际的影响')+
  xlab('ISIC制造业分类')+
  labs(fill="贸易边际")+
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank())+
  theme(legend.position = c(0,1),
        legend.justification = c(-0.1,1.1))+
  scale_fill_grey(start = 0.5,end = 0.8,
                  labels = c("扩展边际","集约边际"))
  
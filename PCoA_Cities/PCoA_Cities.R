setwd("~/Desktop/BMS270_2018/")
library(tidyverse) # a set of general data wrangling and graphing tools
library(ape) # a package full of useful features for ecological studies inculding the PCoA function
dist<-read.table("americancities.dist", skip=1, row.names=1, sep='\t', header=T)
pc<-ape::pcoa(dist)

ggplot(as.data.frame(pc$vectors) %>% rownames_to_column("City"), aes(x=Axis.1, y=Axis.2, label=City)) +
  geom_point() +
  geom_text(size=2, hjust=0, nudge_x = 100) +
  scale_x_reverse() +
  theme_classic(base_size = 8) +
  xlab("PC1") + ylab("PC2") +
  ggtitle("PCoA analysis of distance between American cities")

ggsave("PCoA_cities.pdf", height=5, width=6, useDingbats=F)

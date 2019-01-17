ggplot(data.frame(
  Go_1 = c(rnorm(10000), rnorm(10000,4), rnorm(50000,4,3)),
  Go_2 = c(rnorm(10000,4),rnorm(10000,6), rnorm(50000,-3, 2))
), aes(x = Go_1, y = Go_2)
) + 
  geom_hex() + 
  scale_fill_distiller(palette= "Spectral", direction = 1) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank())

ggplot(diamonds, aes(color,color=color, fill = color, alpha = cut)) + 
  geom_bar(stat="count") + coord_polar() + 
  theme(panel.background = element_rect(fill = "lightgrey")) + xlab("Group") +
  guides(fill = F, color = F)

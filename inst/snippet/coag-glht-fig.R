require(multcomp)
coag.glht <- glht(coag.lm, mcp(diet = "Tukey"))
msummary(coag.glht)  
plot(confint(coag.glht))
mplot(TukeyHSD(coag.lm), system = "gg") %>%
  gf_theme(legend.position = "top") 


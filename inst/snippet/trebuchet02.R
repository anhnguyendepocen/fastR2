treb.model <- 
  lm(distance ~ projectileWt, data = Trebuchet2)
msummary(treb.model)   # terser output than summary() produces


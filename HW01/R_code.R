# STAT545-hw01-Griffith-Cody
# Hey Vincenzo! 
#   
# I'm editing this within the browser.
# 
# Now I'm editing this locally.
# 
# Here is some latex code

#$$\int_0^\infty e^{-x}\,dx=1$$
  
# I didn't know that RStudio can display latex within the notebook. That is pretty cool.

#Now here is some R code.

x<-rnorm(1000)
y<-rnorm(1000)
example<-plot(x,y)
dev.print(pdf, "hw1_example.pdf")

# [This goes to Stat 545 homepage](stat545.com)
# 
# I will now try to run this in R Markdown, although I don't have a functional $\Latex$ distribution at the moment. I believe that means I can only see the html version outside of github.
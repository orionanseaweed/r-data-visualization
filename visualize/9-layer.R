# Ex.9.2.1.1: Create a scatterplot of hwy vs. displ where the points are pink filled in triangles.

ggplot(mpg, aes(x = hwy, y = displ)) +
  geom_point(color = "pink", shape = "triangle")

------------------------------------------------------------------------------------------------------------------------------------------------------------

# Ex.9.2.1.4: What happens if you map an aesthetic to something other than a variable name, like aes(color = displ < 5)? Note, you’ll also need to specify x and y.
# Solution: it's gonna create a third aes that distinguish displ > 5 and displ < 5 by colored.

ggplot(mpg, aes(x = hwy, y = displ, color = displ < 5)) +
  geom_point()

------------------------------------------------------------------------------------------------------------------------------------------------------------

#
# Solution:

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(shape = "circle"), size = 4, show.legend = FALSE) +
  geom_smooth(se = FALSE) 

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(shape = "circle"), size = 4, show.legend = FALSE) +
  geom_smooth(aes(group = drv), se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = drv)) +
  geom_smooth(se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = drv)) +
  geom_smooth(aes(linetype = drv), se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(size = 4, color = "white") +
  geom_point(aes(color = drv))

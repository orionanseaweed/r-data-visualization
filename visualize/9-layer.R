Ex.9.2.1.1: Create a scatterplot of hwy vs. displ where the points are pink filled in triangles.

ggplot(mpg, aes(x = hwy, y = displ))
+ geom_point(color = "pink", shape = "triangle")

------------------------------------------------------------------------------------------------------------------------------------------------------------

Ex.9.2.1.4: What happens if you map an aesthetic to something other than a variable name, like aes(color = displ < 5)? Note, you’ll also need to specify x and y.
Solution: it's gonna create a third aes that distinguish displ > 5 and displ < 5 by colored.

``` r
ggplot(mpg, aes(x = hwy, y = displ, color = displ < 5))
+ geom_point()
```

------------------------------------------------------------------------------------------------------------------------------------------------------------

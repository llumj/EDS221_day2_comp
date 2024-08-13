#  practice with storing data types
dogs <- c("teddy", "khora", "waffle", "banjo")

# see what data type it is
typeof(dogs)
class(dogs)

weights <- c(50, 55, 25, 35)

typeof(weights)
# type came back as double
class(weights)

dog_age <- c(5L, 6L, 1L, 7L)

typeof(dog_age)
class(dog_age)
# both came back as integer

is.numeric(dog_age)
# came back as TRUE becuase an integer is numeric

dog_info <- c("teddy", 50, 5L)

dog_info
# turned them all into character strings

class(dog_info)
is.character(dog_info)


dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond")
dog_food[2]
dog_food["khora"]

cars <- c("red", "orange", "white", "blue", "silver", "black")
cars[5]
cars[2:4]

i <- 4
cars[i]

i <- seq(1:3)
cars[i]

cars[3] <- "BURRITOS!"
cars

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)

fish_size

typeof(fish_size) # Returns the class of values

class(fish_size) # Returns matrix / array

dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)

dog_walk

class(dog_walk)
typeof(dog_walk)
# Hmmmmmm once again back to the broadest category of data type in the hierarchy

whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), nrow = 2, ncol = 2, byrow = TRUE)

# Take a look
whale_travel

# Access the value 1348
whale_travel[1,2] # Row 1, column 2

# Access the value 46.9
whale_travel[2,1]

# If you leave any element blank (keeping the comma), it will return all values from the other element. For example, to get everything in row 2:
whale_travel[2,]
whale_travel[, 1]

# What happens if I only give a matrix one element? That’s the position in the matrix as if populated by column. Check out a few:

whale_travel[3]

# List
urchins <- list("blue", c(1, 2, 3), c("a cat", "a dog"), 5L)

urchins[[2]]

taco <- list(topping = c("onion", "cilantro", "guacomole"), fillings = c("beans", "meat", "veggies"))

taco[[2]]
taco$fillings[3]

fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130, 195, 150))
fruit
fruit[3,1]
fruit$mass[2]

# you cna even chnage the names from code
fruit[2,1] <- "pinapples"

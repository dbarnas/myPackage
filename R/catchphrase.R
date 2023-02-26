#' my_function
#'
#' This function will add two parameters together and return the sum
#'
#' @param character Character string with options for lab member names
#' @return Catchphrase of the chosen character
#' @export
catchphrase <- function(character = ""){

  if(character == ""){
    print("Choose your character. Options include: Nyssa, Maya, Mads, Jamie, Danielle, Rob, Cindy, Hannah")
  }

  phrasing <- as.character()


  if(character == "Nyssa"){phrasing = ("Is it cyoot??")
  my_img <- imager::load.image("images/labmates/Nyssa_img.jpg")
  plot(my_img, axes = FALSE)
  text(x=600,y=1500,labels=phrasing,cex=2)
  } else if(character == "Maya"){phrasing = ("I like soooome dogs...")
  my_img <- imager::load.image("images/labmates/Maya_img.jpg")
  plot(my_img, axes = FALSE)
  text(x=350,y=800,labels=phrasing, cex=1.5, col="white")
  } else if(character == "Mads"){phrasing = ("Don't SAS me!")
  my_img <- imager::load.image("images/labmates/Mads_img.jpg")
  plot(my_img, axes = FALSE)
  text(x=450,y=680,labels=phrasing, cex=2, col="white")
  } else if(character == "Jamie"){phrasing = ("Stay cool!")
  my_img <- imager::load.image("images/labmates/Jamie_img.jpg")
  plot(my_img, axes = FALSE)
  text(x=450,y=900,labels=phrasing, cex=2, col="white")
  } else if(character == "Danielle"){phrasing = ("Forking shirtballs!")
  my_img <- imager::load.image("images/labmates/Danielle_img.jpg")
  plot(my_img, axes = FALSE)
  text(x=370,y=100,labels=phrasing, cex=2)
  } else if(character == "Rob"){phrasing = ("I'm dead!")
  my_img <- imager::load.image("images/labmates/Rob_img.jpg")
  plot(my_img, axes = FALSE)
  text(x=150,y=100,labels=phrasing, cex=1.5)
  } else if(character == "Cindy"){phrasing = ("Being a mom is the best <3")
  my_img <- imager::load.image("images/labmates/Cindy_img.jpg")
  plot(my_img, axes = FALSE)
  text(x=110,y=240,labels=phrasing, cex=1.25, col="white")
  } else if(character == "Hannah"){phrasing = ("I like potatoes")
  my_img <- imager::load.image("images/labmates/Hannah_img.jpg")
  plot(my_img, axes = FALSE)
  text(x=800,y=100,labels=phrasing)
  }

  plot(my_img, axes = FALSE)
  text(x=300,y=650,labels=phrasing)

  return(paste(phrasing))
}

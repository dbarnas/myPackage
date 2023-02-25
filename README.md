# How to create an R package

![what like it's hard meme](images/like_its_hard.jpg)

## A basic guide to quickly making a package using the roxygen2 package


### 1. Open RStudio and install *devtools* and *roxygen2* packages

In console:  

    install.packages("devtools")  
    install.packages("roxygen2")  

### 2. Create a New Project > New Directory > R Package

![new project](images/new_project.jpg)

![new directory](images/new_directory.jpg)

![R package](images/R_package.jpg)

![new package in RStudio](images/new_package_rstudio.jpg)

### 3. Review the primary components of the package

R folder: location to store functions as scripts (.R files)
    
![R folder](images/mooreasgd_Rfolder.jpg)
    
NAMESPACE: file explicitly indicating which functions to export/include in the package (generated and updated by roxygen2)
    
![namespace](images/mooreasgd_namespace.jpg)
    
DESCRIPTION: metadata about the package, including the package name and description, author information, and any necessary packages that should be installed prior to use and will be loaded simultaneously when this package is loaded.
    
![description](images/mooreasgd_description.jpg)

(We can delete the current R script "hello" and also the NAMESPACE for now. NAMESPACE will be generated again when we build our package later)

### 4. Create a repository on GitHub with the same package name

Create a new repository for your package on GitHub

![new repository](images/new_repository.jpg)

Type in the same repository name  
- check for correct capitalization  
- do *not* initialize the repository with a README file, .gitignore, or license

![name repository](images/name_repository.jpg)

![create repository](images/create_repo_same_name.jpg)

GitHub will give instructions on how to initialize a new repository in your Terminal (we'll come back to this in just a moment)

![github instructions](images/github_instructions_commit.jpg)

### 5. Put your new project on GitHub for version control

In RStudio: Tools > Version Control > Project Setup

![version control](images/project_version_control.jpg)

Choose **git** as the version control system

![version control system](images/git_svn.jpg)

Restart RStudio when prompted

![restart RStudio](images/restart_rstudio.jpg)

Open your Terminal in RStudio

![open Terminal](images/terminal_rstudio.jpg)

Type the following line by line in your Terminal

    git init
    git add *
    git commit -m "first commit"
    git branch -M main
    git remote add origin https://github.com/dbarnas/myPackage.git
    git push -u origin main

![git line by line](images/git_init_full.jpg)

![git successful push](images/complete_git_init.jpg)

![GitHub main page](images/github_initialized_mainpage.jpg)


### 6. Write your first function

Open a new .R file

![new R file](images/new_r_file.jpg)

- example of how we will format our script

![script example](images/mooreasgd_ex_function.jpg)

    #' my_function
    #'
    #' This function will add two parameters together and return the sum
    #'
    #' @param parameter_one Numerical value added to parameter_two
    #' @param parameter_two Numerical value added to param_one
    #' return Sum of two parameters will be returned
    #' @export
    my_function <- function(parameter_one, parameter_two){
    
    my_sum <- parameter_one + parameter_two
    
    return(my_sum)
    }

### 7. Save your script (same name as your function)

![save script](images/save_as.jpg)

### 8. Build your package

    devtools::document()

Check that NAMESPACE has been generated and updated with your function

![namespace update](images/namespace_update.jpg)

### 9. Push package updates to GitHub through Terminal or Git tab

Terminal:

    git add *
    git commit -m "create first function"
    git push

### 10. install and load your package

    devtools::install_github("dbarnas/myPackage")  
    library(myPackage)  


![Succes Kid](images/success_kid.jpg)

## Resources

- Creating an R package with roxygen2: https://vandomed.github.io/build_rpackage.html  
- Putting your R package on github: https://kbroman.org/pkg_primer/pages/github.html  



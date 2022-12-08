This repository contains the Bookdown files of the R-Lernplattform. Please note that the repository itself is private and will not be published.
Only the website will be public once github pages is activated.

To create the website, download the repository and open the RLernplattform.Rproj with RStudio. Go to the "Build" tab on the top right and click on the arrow next to "Build Book". Select bookdown::gitbook. RStudio will now create the website. This may take some time. Once the website is built, it will open in the browser.

## Todo

- [ ] establish workflow for adding new topics
- [ ] replace all links
- [ ] check all pages (compare to exsiting web page)
- [ ] find better way to handle dependencies. Currently all required packages are loaded when the project is built. This is not a good idea
functions of different packages may have the same name.


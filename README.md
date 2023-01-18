This repository contains the Bookdown files of the R-Lernplattform. Please note that the repository itself is private and will not be published.
Only the website will be public once github pages is activated.

Changing the website currently works as follows: Open the file you want to change on GitHub. Click the edit button (pencil) and change the
code. Click commit and commit your changes once you are done.

Creating the website is also handled by GitHub. Go to "Actions" (on the top) and select "create_bookdown" on the left. You will see a button that
says "Run Workflow". Select that button and click "Run Workflow". GitHub will now create the website. This website will not be made available online at the moment! If you want to see the website, go to "Actions", click on "create_book" and scroll down until you see "Artifacts".
There will be an artifact called "_book". This is our webpage. Download the file and unzip it. 
Double-Clicking on any of the .html files will open the website locally.

To create the locally, download the repository and open the RLernplattform.Rproj with RStudio. Follow the instructions in 15-Interne-Dokumentation.Rmd.

## Todo

- [ ] establish workflow for adding new topics
- [ ] replace all links
- [ ] check all pages (compare to exsiting web page)
- [x] find better way to handle dependencies. Currently all required packages are loaded when the project is built. This is not a good idea
functions of different packages may have the same name.


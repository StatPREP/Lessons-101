# Lessons-101 Repository

This is the repository for StatPREP lessons created for the "Six-topics" project launched in September 2018.

The purpose of the Six-topics project was to provide content where *conventional topics* in introductory statistics can be taught using data, particularly drawing on the Little Apps.

## Organization

This site has two distinct but related purposes:

1. To serve as the working repo for development and maintenance of the lessons.
2. To provide the web site that serves up the lessons.

The files have been organized as a Blogdown site. This means that the directory structure has a specific, intentional format that should be respected. In the ordinary course of things, there are two places where you will  edit files.

1. The `content/` directory. This is where the source materials for all the documents go. 
    - The lessons are contained as individual files in the `content/lessons/` directory.
    - The instructor guides are in `content/topics/`
    - Miscellaneous other materials are in the `content/etc` directory.
2. The `static/` directory. 
    - Put any image files you want to use in the materials in `static/images/`. To refer to an image file in a document, use a URL like `/images/my_image.png`. Note that the URL starts with a slash. This is important.
    - For documents where you want to provide a version of the document in a word processing format, compile (a.k.a. "knit") the Rmd file into that format in the appropriate `content/` directory. Then copy over the formatted file into the `static/word-versions/` directory. When you want to refer to such a file, use  a URL like `/word-versions/lesson_1.xlsx`.

Other than these places, you shouldn't change anything else on the site. To be more specific: 

1. Don't edit `config.toml` unless you know exactly what you are doing with regard to Blogdown configuration.
2. Similarly, don't make any changes in the `themes/` directory unless  you are familiar with Blogdown.
3. The `public/` directory is populated automatically, so there is no reason to edit anything there.

## Adding and editing lessons

The source documents for the lessons are in  Markdown. This makes it easy to  change the text. 

At the top of each source document is a short section like the following:
    
    ---
    title: "What is a confidence interval?"
    date: "StatPREP Class Lesson"
    description: "Describes the desired behavior of a confidence interval, that is, how to test whether a procedure produces a valid confidence interval."
    weight: 12
    output:
      word_document:
        reference_docx: lesson-style.docx
    ---
    
The field names (e.g. `title:`, `description:`,  etc.) should be left as they are (unless you are familiar with Blogdown). Note that the title, date and description values are quoted character strings. You can change them as you  like so long as you keep them as a quoted character string with  no linebreaks.

At the bottom of the lesson file is a marker for a horizontal rule followed  by a few items. The version number, and the author list are things you may well want to change. (Bump  up the version number when you make a major change in the lesson.) There is also R code that will automatically generate the link to the word version  of the lesson. There is no reason to change this.

The  `weight:` field determines where the entry for the lesson will show up on the main lesson page. Smaller numbers put the lesson earlier in the page.

You can edit the lessons directly on this GitHub site, making sure to save them using the facilities  provided by GitHub, which you'll find under the editing window. 

If  you're comfortable using RStudio, you probably want to clone this repository and do your editing *within* RStudio. If you are using RStudio, be sure to "pull" the repository before you start work. This will bring down any changes made since you last worked on  the repository. It's very important to do this in  order to avoid the hassle  of conflicting versions created when you edit something that has recently been edited by someone else, but you haven't updated to incorporate that person's edits into the file on your own machine.

# Deploying your changes

If  you are not a regular editor of this site, you should create a "pull request" when you want to integrate your changes with this repo site.

If you are an editor, you can use the usual "commit/pull/push" sequence.

Once your changes have been integrated into this repository, they will  automatically be deployed on the web site. The only things you should ever need to  change are:

1.  The Rmd source documents  themselves.
2. Images in the  `static/images/` directory.
3. Creating a word format document and copying it into the `static/word-versions/`  directory. (This  only applies if you are using RStudio. If you're not comfortable with this, just send a note to the site manager who will do it for you.)

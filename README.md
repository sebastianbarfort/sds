# Social Data Science
Course site for Social Data Science, Department of Economics, University of Copenhagen (Fall 2015)

It is a long term ambition that the development of this course be a collaboration among researchers with common interests, and I therefore welcome all suggestions for improvement and further development. If you have any suggestions please *do not hesitate to make a pull request*.  

### Editing Pages
Edit ``_includes/home.md`` for main page content. Other pages are in the main directory as standard markdown files.

### Creating Posts

I recommend you use [rmarkdown](http://rmarkdown.rstudio.com/) for posts as it is the easiest way to integrate R or Python code in your document. Create a new post in  ``_knitr/`` and follow the instructions [here](http://www.jonzelner.net/jekyll/knitr/r/2014/07/02/autogen-knitr/) for turning them into the post format required by Jekyll. You can copy one of the rmarkdown files already in the folder for an example.

If you for some reason do not use rmarkdown, you can create regular posts in ``_posts/``, following this naming convention: ``YYYY-MM-DD-the-post-title.md``

Start posts with the following header:

    ---
    layout: post
    title:  "The post title"
    date:   YYYY-MM-DD HH:MM:SS
    categories: lectures
    ---

### Local Preview
To preview the site locally:

  1. Install jekyll: ``gem install jekyll``
  2. Clone the repo and checkout the ``gh-pages`` branch: ``git checkout gh-pages``
  3. Remove the baseurl and url in the ``_config.yml`` file
  4. Visit ``http://127.0.0.1:4000/`` in your browser

This will render the static site in ``_site/``.

### Publishing changes
Make sure baseurl and url both points to http://sebastianbarfort.github.io/dsss/.  
After ``git commit``-ing local changes, publish the site to Github: ``git push origin gh-pages``. (Note: Don't push to ``master``!)

Github will re-run Jekyll and generate ``_site/`` for public display. This is why it's in ``.gitignore``.

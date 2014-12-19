# msd2015
Course site for Modeling Social Data, Applied Mathematics, Columbia University (Spring 2015)

### Editing Pages
Edit ``_includes/home.md`` for main page content. Other pages are in the main directory, as ``syllabus.md``, ``instructors.md``, etc.

### Creating Posts
Create posts in ``_posts/``, following this format: ``YYYY-MM-DD-the-post-title.md``

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
  3. Run ``jekyll serve --baseurl '' --watch``
  4.Visit ``http://127.0.0.1:4000/`` in your browser

This will render the static site in ``_site/``.

### Publishing changes
After ``git commit``-ing local changes, publish the site to Github: ``git push origin gh-pages``. (Note: Don't push to ``master``!)

Github will re-run Jekyll and generate ``_site/`` for public display. This is why it's in ``.gitignore``.

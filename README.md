# Poornalayam Website Hugo source

[![pipeline status](https://gitlab.com/poornalayam/poornalayam/badges/master/pipeline.svg)](https://gitlab.com/poornalayam/poornalayam/commits/master)

# Automatic Website Publishing

1. Edit talks content in the [master branch](https://gitlab.com/poornalayam/poornalayam/tree/master) via the web interface
1. Sidebar widgets: [Download Latest Talks](https://gitlab.com/poornalayam/poornalayam/blob/master/layouts/partials/widgets/downloadlatesttalks.html), [Announcements](https://gitlab.com/poornalayam/poornalayam/blob/master/layouts/partials/widgets/announcements.html)
1. Save and commit to the master branch
1. GitLab CI/CD pipeline will automatically run Hugo and publish files to GitLab Pages
1. The pipeline will also push changes to [Poornalayam GitHub Pages repo](https://github.com/poornalayam/poornalayam.github.io)
1. Status of the pipeline can be monitored on the [jobs dashboard](https://gitlab.com/poornalayam/poornalayam/-/jobs)
1. Changes made to the [GitLab hugo repo](https://gitlab.com/poornalayam/poornalayam) will be automatically pushed to the [GitHub hugo repo](https://github.com/poornalayam/poornalayam-web-hugo)

# Manual Website Build Instructions

1. [Download Hugo](https://github.com/gohugoio/hugo/releases) tested against [v0.53](https://github.com/gohugoio/hugo/releases/tag/v0.53)
1. Clone this repo
1. Run "hugo server" to build the static website and view on http://localhost:1313
1. Make changes to Markdown/HTML files in content/
1. Static files CSS/JS/images/etc from static/ folder will be copied as-is to pubilc/
1. Run "hugo" to build the static site in the public/ folder
1. Sometimes /home/ is broken, to fix run: rm -rf public/* /tmp/hugo_cache; hugo
1. Hugo Pipes are fully supported to minify and bundle HTML, CSS and JS

# TODO
1. layouts/partials/breadcrumbs.html -- have to set page titles in breadcrumbs, whitespace below to be increased
1. ~~right side content boxes all simple html -- annoucements, news, download latest talks~~
1. ~~Change sidebar to appear *before* main content in mobile devices.~~ not needed, present layout is correct
1. ~~Sidebar html links are not red color, they are black. Fix CSS to make it red like rest of text.~~
1. nested menus not working
1. ~~classes-recorded/* pages, finished upto Bhagavad Gita Ch 03~~ -- completed
1. ~~Redirect / /home, or create a custom landing page~~ -- static/index.html redirects to /home
1. Manually merge upstream updates from newer [mainroad theme](https://github.com/Vimux/Mainroad) 

# Theme Customisations
1. themes/mainroad-custom/layouts/_default/single.html -- uses breadcrumbs partial
1. themes/mainroad-custom/layouts/_default/list.html -- list pages also use single.html layout
1. layouts/partials/widgets/*.html -- added announcements, news, download latest talks widgets
1. themes/mainroad-custom/static -> assets -- renamed this folder for Hugo Pipeline, assetDir does not work with theme folders
1. mainroad theme CSS has been fully customized, any updates to upstream must be merged manually

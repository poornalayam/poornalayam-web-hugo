# Poornalayam Website Hugo source

# Website Build Instructions

1. Download Hugo from https://gohugo.io
1. Clone this repo
1. Run "hugo server" to build the static html and view on http://localhost:1313
1. Make changes to Markdown/HTML files in content/
1. Static files (CSS/CS/images which will be copied as-is to pubilc/) are in static/
1. Run ./01-publish.sh to auto run git commit public/ files and push to https://github.com/poornalayam/poornalayam.github.io

# TODO
1. layouts/partials/breadcrumbs.html -- have to set page titles in breadcrumbs, whitespace below to be increased
1. ~~right side content boxes all simple html -- annoucements, news, download latest talks~~
1. ~~Change sidebar to appear *before* main content in mobile devices.~~ not needed, present layout is correct
1. ~~Sidebar html links are not red color, they are black. Fix CSS to make it red like rest of text.~~
1. nested menus not working
1. ~~classes-recorded/* pages, finished upto Bhagavad Gita Ch 03~~ -- completed
1. ~~Redirect / /home, or create a custom landing page~~ -- static/index.html redirects to /home

# Theme Customisations
1. themes/mainroad-custom/layouts/_default/single.html -- uses breadcrumbs partial
1. themes/mainroad-custom/layouts/_default/list.html -- list pages also use single.html layout
1. themes/mainroad-custom/layouts/partials/widgets/*.html -- added announcements, news, download latest talks widgets
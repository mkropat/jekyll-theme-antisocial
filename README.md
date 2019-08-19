__Antisocial__ at a glance:

- [Medium](https://medium.com/)-inspired Jekyll theme
- Drop-in replacement for [Minima](https://github.com/jekyll/minima), the default `jekyll new` theme
- Compatible with [GitHub Pages](https://pages.github.com/)
- Responsive design
- [Pagination](https://jekyllrb.com/docs/pagination/) support (optional)
- No external fonts or scripts loaded
- No built-in commenting support (it is called antisocial after all)

### Usage

1. Create a [Jekyll site](https://jekyllrb.com/) (if you haven't already)
1. Edit `_config.yml` and makes sure `jekyll-remote-theme` is under `plugins`:

    ```
    plugins:
      - jekyll-remote-theme
    ```
   
1. Also in `_config.yml`, add the following line:

    ```
    remote_theme: mkropat/jekyll-theme-antisocial
    ```

You can now create pages with the `page` and `post` layouts.

### Developing

This is the best way I have come up with to work on the theme. Basically, take a site that uses the theme and temporarily modify it like so:

```
diff --git a/Gemfile b/Gemfile
--- a/Gemfile
+++ b/Gemfile
@@ -1,2 +1,3 @@
 source 'https://rubygems.org'
 gem 'github-pages'
+gem 'jekyll-theme-antisocial', path: '/SOME/PATH/TO/jekyll-theme-antisocial'

diff --git a/_config.yml b/_config.yml
--- a/_config.yml
+++ b/_config.yml
@@ -4,7 +4,7 @@ plugins:
   - jekyll-remote-theme
   - jekyll-seo-tag
 
-remote_theme: mkropat/jekyll-theme-antisocial
+theme: jekyll-theme-antisocial
 
 # Site settings
 title: example.com
 ```

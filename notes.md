# Notes

## who is this theme for?
* someone who knows (or is willing to learn)
  * Git version control
  * Hugo static site generator
  * an IDE or other capable text editor
  * how to run commands in the command line
  * how to read error messages in the command line

## goals
* more robust use of Hugo errors and warnings
  * less bubble-wrapping misconfigurations [highest priority]
  * required component inputs [high priority]
  * valid component input choice [low priority, long horizon]
    * padding, bg color, text color, etc all from bootstrap
    * should be `erroridf` so they can be disabled by choice if someone wants to use non-bootstrap classes

* add default configurable parameters to all components
  * expand wrapper to include outer div, draft banner, container, row
  * 2 versions: edge-to-edge bg and constrained-width bg
  * container padding and margin [top priority]
  * anchor link [top priority]
  * background image [top priority]
  * background color
  * content panel class (panel, panel white, )
  * text color: heading
  * text color: subheading
  * text color: body
  * CTA
    * style (link or button)
    * icon class
    * color
    * padding, margin classes

* make component inclusion explicit instead of implicit
  * enables meta-components like a getfishtank.ca style multi-component-spanning background utility
  * makes the ordering of components easier to modify (alter the list instead of renaming files or adjusting file weights)

* base componentry
  * ensure there is a good base of useable components in the theme, but not too much
    * full screen mega-banner
    * full width mega-banner 
    * constrained width mega-banner
    * content block
    * classic
    * top nav
    * top nav variants?
    * side nav
    * footer and variants
  * move some components back out to kontralto.com or a secondary theme
    * basically all components should be copied out
    * then theme can include very versatile components only

* style architecture changes
  * add hook for custom SCSS
  * bootstrap as a separate style link, not min'ed with other scss
  * bootstrap skippable with a flag

* example sites
  * documentation
    * changelog
    * roadmap?
    * assumptions about the readers knowledge, with links
    * basic theme usage
    * adding custom components to your site (in-site or as an additional theme)
      * edge-to-edge vs constrained-width
      * component partial locations
      * wrappers and utils
    * adding custom css and disabling bootstrap
    * config file
    * components
  * live demo
  * test

## testing

theme testing:
* correct DOM rendering
  * DOM diffing against a known-good output OR
  * white-space agnostic file diffing against known-good OR
  * js test suite for DOM validation <=== probably the best option

production site testing
  * collect all links on the site (internal and external) and evaluate for non-200 responses



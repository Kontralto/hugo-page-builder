# Pages and Components

Table of Contents:
* Overview
* Important considerations
* Params
* Add Components to Pages

## Overview
A page is a content file that results in a generated HTML page, utilizing the `baseof.html` outer template, the relevant page template, and a series of component partials.

A component is a content file that is inserted into a page to create rich content, but does not result in a discrete generated HTML page.
* Components have one of each:
  * Layout: the partial that is used to render the content
  * Datasource: the piece of markdown content that is used to hydrate the component
  * Context: the content item for the component, regardless of datasource

### Datasource
* By default the component content file is it's own datasource
* A component can instead _specify_ a datasource, such as another page, to hydrate the layout instead

### Context
* The context item is the item causing the rendering to happen
* The context and the datasource are by default the same item
* If the datasource for a component is specified, then the context remains the original content item

## Important Considerations
* dynamically typed
  * no guarantee or enformcement about content shapes and templates
* a component should
  * almost always be within the component wrapper
  * check for a field value before rendering it to avoid empty markup
  * provide error/hint rendering for the hint mode

## Params
### Universal Params
**title**

This is built into hugo. This is used in the page's `<head>` section

**heading**

The main heading for the page. This is categorically different from the title, but in practice these probably have the same value. Will be used in the page banner and in component heading.

**subheading**

Similar to the heading, but a lesser element.

**ctatext** 

Button text for the CTA.

**ctalink**

URL for the CTA.

**content** 

This is not a param in the file's frontmatter, but rather the markdown content below it.

### Page Params
**meta**

* title
* description
* type
* url
* image
* twitter_card
* twitter_site
* twitter_creator

**componentdirectory** (default: `components`)

**hideblock**

A list of strings to disable a particular page block from rendering. See `layouts/_default/baseof.html` for available page blocks.

### Component Params
**component** (needs a name update)

This is the layout file to be used for the component
* Component layouts are located in `layouts/partials/components/**/*.html`
* The base path `layouts/partials/` is always prepended, and the suffix `.html` appended, to the `component` param specified in frontmatter
* If the layout is not found then by default it falls back to `layouts/partials/components/content/block`. this is not configurable (yet).

**align** (some components)

One of [`left`, `right`, `center` ].

**columnsize** (some components)

A string specifying Bootstrap column classes for customizing the layout.

**datasource** (optional)

Specify a page or other piece of content to hydrate the component instead of the current item. 

**ctahide**

A toggle to hide the CTA link.

## Add Components to Pages
* create a subfolder under your page called `components`
* create `index.md`
* add the following frontmatter to `index.md` 
  ```
  ---
  headless : true
  layout: empty
  component: empty
  ---
  ```
* Add Components
  ```
  my-page/
    index.md      # the page itself
    components/   # component directory
      index.md    # component directory root
      100.md      # component
      200.md      # component
      [...]       
  ```

## Page Blocks
Pages have the following blocks in the same order as this document. They can be overridden in layouts and future functionality will include
* the ability to toggle these sections in page frontmatter
* the default components used in each section

### banner
Uses the non-fullscreen hero banner by default. The banner's datasource is the page itself.

### content
Renders the markdown content from the page. By default it uses the component/content/standard-no-wrap. The component's datsource is the page itself.

### components
Dynamic component rendering for all items in the `components` folder or the folder specified in `componentdirectory`.

### subpages (feature-flagged as off)
* future functionality that is intended to make pages auto-generate content based on the content underneath them
* will likely be toggled off by default

## contact
A component with a CTA at the bottom of the page. Currently uses the `contact` page as a datasource. In the future the default datasource should be configurable in the config.



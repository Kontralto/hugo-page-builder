# Develop A New Component

## Location
Components should have a path like `layouts/partials/components/**/*.html`. Carefully consider the location and name of the component because changes to this will require changes to any content that uses the component. This is not an issue in these early days of the project, however it could easily balloon out in scope once this project is theme-ified and used across multiple websites.

## Wrapper
Refer to existing components for wrapper usage.

The wrapper enhances the functionality of components beyond the base of what Hugo does out of the box. It adds the ability to generate and enhance a set of computed properties, called Scratch, that can be used inside the component view. It also adds helpful debugging tools such as a Scratch printout and a draft notice for draft content.

Some components do not have wrappers, such as the banners. There are some no-wrap versions of content components as well. These are useful for the default components on a page that use the page itself as a datasource - ultimately it prevents redundant draft notices and Scratch printouts.

Be mindful that there is a wrapper top and ALSO a wrapper bottom that needs to be used. 

## Scratch
Scratch is Hugo's way of encapsulating state. We are able to set and get variables, maps, and slices in a context that can be passed around as a variable itself. Using the Scratch in a way that is consistent with the existing components is considered a best practice. This is due to the rigorous scoping for variable and mutation in Hugo. A few knock-on bonuses of using Scratch is that it encourages consistent naming of frontmatter variables across various component and page types, which in turn ensures that content is easily re-usable.

## Initialize Scratch
Some Scratch properties are known ahead of time - such as "is this in development mode?" or "should we show the author hints?" or "do we want to hide the CTA button?" or "what component should we use to display this content?". When we initialize the Scratch we get a lot of this information for free. These Scratch variables are typically coming from the content item's frontmatter or the project config.

### Enhance Scratch
Some information is not known at the time Scratch is generated. Some such examples include "what component partial was _actually_ rendered?" or "what set of fallback classes should be used in this class if none are specified?". This information is known only inside the view partial that is being rendered, and as such we need to enhance the Scratch data beyond it's initial state inside a given view partial. 

## Author Hints
The components should render helpful error or warning messages in dev mode (see Site Config documentation for more info). This might include No Content, Missing Layout, or Missing Items. This functionality could stand to be refactored such that only one component is rendered with all the appropriate warnings and errors, rather than one hint component rendered per warning or error.

## Best Practices
* If you need to create a frontmatter parameter:
  * carefully consider if there is another existing param in another compoent that should be used
  * if there isn't, name it in a component-agnostic way for better re-use
  * add it to the Scratch generation if that makes sense
* Always use a component wrapper until there is a need to not have the component wrapper
  * make a no-wrapper version of the component
  * update the wrapper-ful version of the component to rely on the no-wrapper version
* check for values before rendering them to avoid empty markup in the page
* make use of hint components
* try to not write CSS. There is probably a Bootstrap class you can use. 

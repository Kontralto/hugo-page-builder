# Site Config

Most of the site config should be self explanatory. Only the notable config is mentioned here.

## params.debug.print_scratch
If set to true AND one of the following:
* the `--environment` flag is set to `develop`
* the site is running from a local server AND `--environment` flag is not set to `production`

Each page and each component will print out tables showing the Scratch and Params.

## params.debug.show_drafts
If set to true, and the `-D` flag is passed to Hugo, and `--environment` flag is not set to `production`, draft content that is rendered will be decorated with a yellow banner. Components are also decorated with a yellow outline, but the same is not true for draft Pages. 

This is set to true by default so that hosted development instances show draft content. 

## params.debug.show_hints
If set to true,  and `--environment` flag is not set to `production`, author hints will be rendered where necessary. This includes "layout not found" and "no content" and "no items". There may be more author hints in the future. 

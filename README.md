# README

## get started with the example site

```
hugo new site mySite

cd mySite
git submodule add https://github.com/Kontralto/hugo-page-builder themes/hugo-page-builder

cp -r themes/example-sites/seed/* .
rm config.toml
```
manually add 
```
theme: hugo-page-builder
```
to the top of `config.yaml`.

Run local server: 
```
sh scripts/serve.sh

```
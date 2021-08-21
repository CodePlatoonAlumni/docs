# Hi there

## Why document?

Documentation is going to be really important for any long term project. Even if you are the only one to work on a project, documentation is important because we forget things. If, on the other hand, you are part of a collaborative project, documentation becomes more important because others will need to understand the project.

![Ben Kenobi](../img/kenobi.png)

## What to document

Some of the basic things that should be documented are:

- App setup (if applicable)
- Starting the App
- Running the tests

You might also add links to code:

[mkdocs.yml](https://github.com/garyCoffey/presentationDocumentation/blob/443ca0dd5f018457727ba76cb5ac37c78c44b81b/mkdocs.yml#L1)

[Docs Folder](https://github.com/garyCoffey/presentationDocumentation/tree/main/docs)

Or even code snippets:

```ruby
def base_url
#  "http://some_staging_thing"
 "http://localhost"
end
```

You could also document the creators/maintainers

|Name             | Position| Contact    |
|-----------------|---------|------------|
|Rusty Shackelford| CIA     | Yeah Right!|


Add badges for monitoring:

[![Website](https://img.shields.io/website?label=SITE&style=for-the-badge&url=https://https://garycoffey.github.io/presentationDocumentation/)](https://https://garycoffey.github.io/presentationDocumentation/)
[![Website](https://img.shields.io/website?label=SITE&style=for-the-badge&url=https://garycoffey.github.io/presentationDocumentation/)](https://google.com)

## How to document

There are a ton of documentation tools out there. THe majority of them (or all that I have seen) are built on markdown. Markdown is best described as an html shorthand (I guess? by me at least...).

The frameworks that use markdown however are numerous. What you are looking at here is mkdocs. I created this presentation with mkdocs, because I think it might be the simplest. Personally, I am big fan of jekyll, which is another framework that might feel more familiar to ruby-ists.

To decide on a documentation framework, you should pick one that the majority of the team is either familiar with, or comfortable learning.

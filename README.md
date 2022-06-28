⚠️ This translation is not yet finished! (give me a week or two)

# Grug Dev Translation
The content at https://grugbrain.dev/ translated to plain english.

See [https://reidjs.github.io/grug-dev-translation/](https://reidjs.github.io/grug-dev-translation/) for the plain english translation.

# Local Development and Deployment
This uses pandoc to create an HTML website from the markdown in [grug_dev_translation.md](./grug_dev_translation.md). For ease of development, the commands are encoded into the [Makefile](./Makefile).
1. After making changes to [grug_dev_translation.md](./grug_dev_translation.md), run `make update` to regenerate the html file, and `make open` to open the file locally.
2. When ready to deploy changes, run `make deploy` to commit all local changes and push to remote. GitHub pages will automatically publish the changes to [https://reidjs.github.io/grug-dev-translation/](https://reidjs.github.io/grug-dev-translation/) 

# TODO
- [x] ~~Finish first draft of translation~~
- [x] ~~Create viewable website index.html~~
- [ ] Contact author and get their feedback/permission
  - [ ] This appears to be the author https://twitter.com/htmx_org/status/1539713592794169346
- [ ] Find a way to show the original source material on the page
  - Idea 1: Show the two side by side in a page-split method (left hand original, right hand translation?) - won't work mobile
  - Idea 2: Create a tool to add tooltips to each line which show the original text on hover:
    ```html
    <abbr title="The Grug Brained Developer">The Grug Brained Developer - English Translation</abbr>
    ```
    might work on mobile

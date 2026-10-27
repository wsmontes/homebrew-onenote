# homebrew-onenote

Homebrew tap for [`onenote2md`](https://github.com/wsmontes/one-note-converter) —
converts Microsoft OneNote sections (`.one`), notebooks (`.onetoc2`) and packages
(`.onepkg`) to Markdown.

```sh
brew install wsmontes/onenote/onenote2md
onenote2md notebook "Open Notebook.onetoc2" -o out
```

`brew update && brew upgrade onenote2md` picks up new releases; a scheduled
workflow in this tap rewrites the version and checksum from the upstream release.

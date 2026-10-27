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
While GitHub Actions is unavailable on the maintainer's account, bump it by hand:

```sh
tag=v0.2.0
sha=$(curl -sL "https://github.com/wsmontes/one-note-converter/archive/refs/tags/$tag.tar.gz" | shasum -a 256 | cut -d" " -f1)
# update url (tag) and sha256 in Formula/onenote2md.rb, then:
brew audit --strict wsmontes/onenote/onenote2md
```

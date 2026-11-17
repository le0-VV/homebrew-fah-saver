# FAH Saver Homebrew tap

Install the macOS [FAH Saver screensaver](https://github.com/le0-VV/FAH-saver):

```sh
brew install --cask le0-VV/fah-saver/fah-saver
```

The macOS build requires Apple Silicon and macOS 11 or later. Homebrew installs
`FAHSaver.saver` in `~/Library/Screen Savers`. Open System Settings, select FAH
Saver and configure the Folding@home client address in its options.

If you installed an earlier copy manually, remove that bundle from
`/Library/Screen Savers` or `~/Library/Screen Savers` before installing the cask.
Keep your FAH Saver preferences when you remove the manual copy. Two installed
copies can make it unclear which version macOS loads.

The build is ad hoc signed and is not notarised. macOS may require explicit
approval before it can run. The macOS screensaver host can retain memory and GPU
activity after a preview stops. Read the [release notes](https://github.com/le0-VV/FAH-saver/releases)
for the current limits and verification results.

To update or remove the Homebrew installation:

```sh
brew update
brew upgrade --cask fah-saver
brew uninstall --cask fah-saver
```

Uninstalling the cask preserves the screensaver's preferences and cached model.

## Release updates

Publishing a stable release in the source repository triggers its
[`update-homebrew.yml`](https://github.com/le0-VV/FAH-saver/blob/main/.github/workflows/update-homebrew.yml)
workflow. It downloads the exact versioned macOS ZIP, verifies its bundle version,
Apple Silicon executable and macOS deployment target, and records that ZIP's
SHA-256 in `Casks/fah-saver.rb`. A dedicated deploy key can write to this tap only.
The first published release creates the first cask. Drafts and prereleases do not
change it. The workflow refuses to downgrade a cask or replace the asset hash for
an existing version.

This tap's source is licensed under **GPL-3.0-or-later**. See [LICENSE](LICENSE).
The screensaver contains separately licensed components. Their notices are
included with the screensaver release.

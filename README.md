# Homebrew Tap for Volcano

This tap publishes the Homebrew formula for the Volcano CLI.

## Install

```bash
brew install Kong/volcano/volcano
```

Or tap the repository first:

```bash
brew tap Kong/volcano
brew install volcano
```

## Update the formula

When a new stable `volcano-cli` release is published, update `Formula/volcano.rb` with:

- the new version
- release asset URLs for the new tag
- SHA256 values from the release `SHA256SUMS` asset

Release assets currently come from <https://github.com/Kong/volcano-cli/releases>.

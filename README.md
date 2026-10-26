# Papaya-Voldemort/homebrew-tap

My Homebrew tap.

## Install

```sh
brew tap Papaya-Voldemort/tap
brew install Papaya-Voldemort/tap/monochromium
```

## Packages

| Formula | Description |
|---|---|
| [monochromium](https://github.com/Papaya-Voldemort/Monochromium) | Fast, local-first CLI note-taking app (installs the `mono` binary) |

## Keeping the tap updated

A GitHub Actions workflow (`.github/workflows/update.yml`) runs every 6 hours,
checks the [Monochromium GitHub releases](https://github.com/Papaya-Voldemort/Monochromium/releases)
for the latest version, and bumps the formula's `url` and `sha256` (taken from
the release's `SHA256SUMS`) automatically. It can also be run manually via
"Run workflow".

The formula installs the prebuilt `macos-universal` release binary, so no Rust
toolchain is required and installation takes seconds.

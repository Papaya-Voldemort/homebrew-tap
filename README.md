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
checks crates.io for the latest stable `monochromium` release, and bumps the
formula's `version`, `url`, and `sha256` automatically. It can also be run
manually via "Run workflow".

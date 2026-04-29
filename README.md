# eduardocaminha/homebrew-tap

Homebrew tap for tools maintained by [@eduardocaminha](https://github.com/eduardocaminha).

## Install

```bash
brew tap eduardocaminha/tap
```

Once tapped, individual formulas can be installed by name (preview — formulas land in subsequent commits):

```bash
brew install eduardocaminha/tap/ralph
```

## What is a tap?

A [Homebrew tap](https://docs.brew.sh/Taps) is a third-party repository of formulas that Homebrew can install from. The `homebrew-` prefix in this repo's name (`homebrew-tap`) is what makes the short form `brew tap eduardocaminha/tap` resolve to `eduardocaminha/homebrew-tap` on GitHub.

## Contents

- `Formula/` — Homebrew formula `.rb` files. Currently empty; populated by [reporter#127](https://github.com/eduardocaminha/reporter/issues/127) (the cross-repo Ralph CLI build).

## Roadmap

| Tool | Status | Source |
|---|---|---|
| `ralph` | Pending (US-012 of reporter#127) | [eduardocaminha/ralph-cli](https://github.com/eduardocaminha/ralph-cli) |

## License

MIT — see [LICENSE](./LICENSE).

# Homebrew Tap for k1s

This is the official Homebrew tap for [k1s](https://github.com/andrebassi/k1s) - Kubernetes TUI Debugger.

## Installation

```bash
brew tap andrebassi/k1s
brew install k1s
```

Or install directly:

```bash
brew install andrebassi/k1s/k1s
```

## Upgrade

```bash
brew upgrade k1s
```

## Uninstall

```bash
brew uninstall k1s
brew untap andrebassi/k1s
```

## About k1s

k1s is a terminal-based user interface for debugging Kubernetes workloads.

**One screen to see why your pod is broken.**

Features:
- Real-time container logs with filtering
- Pod events with Warning filtering
- Resource metrics (CPU/Memory)
- HPA monitoring with KEDA support
- ConfigMaps/Secrets viewing
- Cross-namespace resource copy

For more information, visit: https://github.com/andrebassi/k1s

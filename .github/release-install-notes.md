---

## Installation

1. Download **ReOpenIsland.dmg**, open it, drag **ReOpenIsland** to **Applications**.
2. First launch: macOS will block the app because it isn't signed
   with an Apple Developer ID. Either:
   - **Right-click → Open → Open** in the Gatekeeper dialog, or
   - run `xattr -dr com.apple.quarantine "/Applications/ReOpenIsland.app"` once.
3. Requires **macOS 14+** (Apple Silicon and Intel).

> This is an unsigned community fork build — Apple Developer ID
> signing and notarization are intentionally skipped. Re-enable them
> in `.github/workflows/release.yml` once you set up signing secrets.

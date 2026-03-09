# ConsoleLog

Minimal logging helpers for Apple platforms using `os.Logger`. Logs directly to Console which allows to test your builds without debugger attached. Especially helpful on watchOS, which isn't always deliver `print()`s.

## Installation (Swift Package Manager)

```swift
dependencies: [
    .package(url: "https://github.com/<your-org>/ConsoleLog.git", from: "1.0.0")
]
```

Then add the product to your target:

```swift
dependencies: [
    .product(name: "ConsoleLog", package: "ConsoleLog")
]
```

## Usage

```swift
import ConsoleLog

debugLog("Debug-only message", 42)      // Logs only in DEBUG builds
consoleLog("Public runtime message")     // Logs in all builds
```

`debugLog` is intended for debug diagnostics.  
`consoleLog` is intended for public, non-sensitive runtime logging.

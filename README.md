# FPSMonitor

A lightweight Swift package for displaying real-time FPS (frames per second) in your iOS app. Uses `CADisplayLink` for accurate frame rate measurement.

## Requirements

- iOS 14.0+
- Swift 5.9+

## Installation

Add FPSMonitor to your project using Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/aduuub/FPSMonitor.git", from: "1.0.0")
]
```

## Usage

### Option 1: FPSMonitor (Programmatic Control)

Use the `FPSMonitor` singleton to show/hide the FPS overlay from anywhere in your app:

```swift
import FPSMonitor

// Show the FPS monitor
FPSMonitor.shared.show(on: windowScene)

// Show with custom configuration
FPSMonitor.shared.show(
    on: windowScene,
    config: FPSConfig(alignment: .topLeading, padding: 16)
)

// Hide when done
FPSMonitor.shared.hide()
```

A common pattern is to enable it in your `SceneDelegate` during debug builds based on a config flag

```swift
#if DEBUG
if shouldShowFPSMonitor {
    FPSMonitor.shared.show(on: windowScene)
}
#endif
```

### Option 2: FPSView (SwiftUI Overlay)

Use `FPSView` directly in your SwiftUI views for more control over placement:

```swift
import FPSMonitor
import SwiftUI

struct ContentView: View {
    var body: some View {
        YourMainContent()
            .overlay(alignment: .topTrailing) {
                FPSView()
            }
    }
}
```

## Configuration

`FPSConfig` allows you to customize the overlay position:

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `alignment` | `Alignment` | `.topTrailing` | Position of the FPS badge |
| `padding` | `Double` | `0` | Padding from the edges |

```swift
let config = FPSConfig(
    alignment: .bottomLeading,
    padding: 20
)
```

## License

MIT

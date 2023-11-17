# HButton

HButton is generic button library built with SwiftUI. Currently, HButton supports iOS and macOS.

## Usage

A `HButton` is initialized with the following:
1. Button title (or, a custom button view)
2. A `HButtonStyle` object, which is used to configure how the button is drawn
3. Tap action handler
4. Optional double-tap action handler
5. Optional long-press action handler

```swift
import HButton

HButton(
    title: "Primary button",
    style: HButtonStyle.primary
        .withBackgroundColor(.red)
        .withBorderColor(.black)
        .withBorderWidth(3)
) {
    // Tap action
} doubleTapAction: {
    // Double-tap action
} longPressAction: {
    // Long press action
}
```

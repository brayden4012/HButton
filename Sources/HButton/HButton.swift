//
//  SwiftUIView.swift
//  
//
//  Created by Brayden Harris on 11/15/23.
//

import SwiftUI

public struct HButton<Label: View>: View {
    private let style: HButtonStyle
    private let tapAction: () -> Void
    private let doubleTapAction: (() -> Void)?
    private let longPressAction: (() -> Void)?
    private let label: Label
    
    /// Creates an HButton with a single label as its content
    /// - Parameters:
    ///   - title: The button title
    ///   - style: The style of the button
    ///   - tapAction: Action to be performed when the user taps the button
    ///   - doubleTapAction: Action to be performed when the user double-taps the button
    ///   - longPressAction: Action to be performed when the user long presses the button
    public init(
        title: String,
        style: HButtonStyle,
        tapAction: @escaping () -> Void,
        doubleTapAction: (() -> Void)? = nil,
        longPressAction: (() -> Void)? = nil
    ) where Label == Text {
        self.label = Text(title)
        self.style = style
        self.tapAction = tapAction
        self.doubleTapAction = doubleTapAction
        self.longPressAction = longPressAction
    }
    
    /// Creates an HButton with a custom View as the button's content
    /// - Parameters:
    ///   - style: The style of the button
    ///   - tapAction: Action to be performed when the user taps the button
    ///   - doubleTapAction: Action to be performed when the user double-taps the button
    ///   - longPressAction: Action to be performed when the user long presses the button
    ///   - label: ViewBuilder for button content
    public init(
        style: HButtonStyle,
        tapAction: @escaping () -> Void,
        doubleTapAction: (() -> Void)? = nil,
        longPressAction: (() -> Void)? = nil,
        @ViewBuilder label: @escaping () -> Label
    ) {
        self.style = style
        self.tapAction = tapAction
        self.doubleTapAction = doubleTapAction
        self.longPressAction = longPressAction
        self.label = label()
    }

    public var body: some View {
        button
            .buttonStyle(MultipleGestureButtonStyle(doubleTapAction: doubleTapAction, longPressAction: longPressAction))
    }

    private var button: some View {
        Button {
            tapAction()
        } label: {
            label
                .font(style.font)
                .foregroundColor(style.foregroundColor)
                .frame(minHeight: style.height)
                .padding(.horizontal)
                .background(style.backgroundColor)
                .cornerRadius(style.cornerRadius)
                .overlay(
                    RoundedRectangle(
                        cornerRadius: style.cornerRadius
                    )
                    .stroke(style.borderColor ?? .clear, lineWidth: style.borderWidth)
                )
        }
    }
}

#Preview {
    HButton(title: "Primary", style: .primary) {
        print("Hello")
    }
}

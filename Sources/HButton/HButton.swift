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
            .onTapGesture(count: 2) {
                doubleTapAction?()
            }
            .onTapGesture {
                tapAction()
            }
            .onLongPressGesture(minimumDuration: 0.25) {
                longPressAction?()
            }
    }
}



#Preview {
    HButton(title: "Primary", style: .primary) {
        print("Hello")
    }
}

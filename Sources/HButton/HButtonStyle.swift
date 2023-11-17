//
//  HButtonStyle.swift
//
//
//  Created by Brayden Harris on 11/15/23.
//

import SwiftUI

public struct HButtonStyle {
    var foregroundColor: Color?
    var backgroundColor: Color?
    var font: Font
    var height: CGFloat?
    var cornerRadius: CGFloat
    var borderColor: Color?
    var borderWidth: CGFloat

    public init(
        foregroundColor: Color? = nil,
        backgroundColor: Color? = nil,
        font: Font = .headline,
        height: CGFloat? = nil,
        cornerRadius: CGFloat = .zero,
        borderColor: Color? = nil,
        borderWidth: CGFloat = 1.0
    ) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.font = font
        self.height = height
        self.cornerRadius = cornerRadius
        self.borderColor = borderColor
        self.borderWidth = borderWidth
    }

    public func withForegroundColor(_ color: Color) -> HButtonStyle {
        HButtonStyle(
            foregroundColor: color,
            backgroundColor: backgroundColor,
            font: font,
            height: height,
            cornerRadius: cornerRadius,
            borderColor: borderColor,
            borderWidth: borderWidth
        )
    }

    public func withBackgroundColor(_ color: Color) -> HButtonStyle {
        HButtonStyle(
            foregroundColor: foregroundColor,
            backgroundColor: color,
            font: font,
            height: height,
            cornerRadius: cornerRadius,
            borderColor: borderColor,
            borderWidth: borderWidth
        )
    }

    public func withFont(_ font: Font) -> HButtonStyle {
        HButtonStyle(
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            font: font,
            height: height,
            cornerRadius: cornerRadius,
            borderColor: borderColor,
            borderWidth: borderWidth
        )
    }

    public func withHeight(_ height: CGFloat) -> HButtonStyle {
        HButtonStyle(
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            font: font,
            height: height,
            cornerRadius: cornerRadius,
            borderColor: borderColor,
            borderWidth: borderWidth
        )
    }

    public func withCornerRadius(_ cornerRadius: CGFloat) -> HButtonStyle {
        HButtonStyle(
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            font: font,
            height: height,
            cornerRadius: cornerRadius,
            borderColor: borderColor,
            borderWidth: borderWidth
        )
    }

    public func withBorderColor(_ borderColor: Color) -> HButtonStyle {
        HButtonStyle(
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            font: font,
            height: height,
            cornerRadius: cornerRadius,
            borderColor: borderColor,
            borderWidth: borderWidth
        )
    }

    public func withBorderWidth(_ borderWidth: CGFloat) -> HButtonStyle {
        HButtonStyle(
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            font: font,
            height: height,
            cornerRadius: cornerRadius,
            borderColor: borderColor,
            borderWidth: borderWidth
        )
    }

    public static var primary: HButtonStyle {
        HButtonStyle(
            foregroundColor: .white,
            backgroundColor: .blue,
            height: 50.0,
            cornerRadius: 25.0
        )
    }

    public static var secondary: HButtonStyle {
        HButtonStyle(
            foregroundColor: .gray,
            font: .body,
            height: 30.0,
            cornerRadius: 15.0
        )
    }
}

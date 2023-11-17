//
//  MultipleGestureButtonStyle.swift
//
//
//  Created by Brayden Harris on 11/16/23.
//

import SwiftUI

struct MultipleGestureButtonStyle: PrimitiveButtonStyle {

    let doubleTapAction: (() -> Void)?
    let longPressAction: (() -> Void)?

    @State var isPressed: Bool = false

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(self.isPressed ? 0.9 : 1.0)
            .onTapGesture(count: 2) {
                doubleTapAction?()
            }
            .onTapGesture {
                configuration.trigger()
            }
            .onLongPressGesture(
                perform: {
                    longPressAction?()
                },
                onPressingChanged: { pressing in
                    self.isPressed = pressing
                }
            )
    }
}

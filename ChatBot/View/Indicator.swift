//
//  Indicator.swift
//  ChatBot
//
//  Created by t.fujii on 2020/10/01.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI
import UIKit

struct Indicator: UIViewRepresentable {
    typealias UIViewType = UIActivityIndicatorView

    @State var isAnimating: Bool = true
    let style: UIActivityIndicatorView.Style = .medium

    func makeUIView(context: UIViewRepresentableContext<Indicator>) -> Indicator.UIViewType {
        UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

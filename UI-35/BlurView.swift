//
//  BlurView.swift
//  UI-35
//
//  Created by にゃんにゃん丸 on 2020/11/18.
//

import SwiftUI

struct BlurView : UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        return view
        
        
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}

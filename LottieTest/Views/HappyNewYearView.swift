//
//  ContentView.swift
//  LottieTest
//
//  Created by Ульяна Гритчина on 14.12.2022.
//

import SwiftUI
import Lottie

struct HappyNewYearView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let animation = LottieAnimation.named("newYear")
        
        let animationView = LottieAnimationView()
        animationView.animation = animation
        animationView.play()
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) { }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HappyNewYearView()
    }
}

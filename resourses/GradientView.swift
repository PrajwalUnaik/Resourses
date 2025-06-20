//
//  GradientBackgroundAnimation.swift
//  SwiftUIAnimations
//
//  Created by Kavinkumar on 14/02/23.
//


import SwiftUI

struct GradientBackgroundAnimation: View {
    
    @State private var animateGradient: Bool = false
    
    private let startColor: Color = .blue
    private let endColor: Color = .green
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [startColor, endColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .hueRotation(.degrees(animateGradient ? 45 : 0))
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
        }
    }
}

struct GradientBackgroundAnimation_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundAnimation()
    }
}

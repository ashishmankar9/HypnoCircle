//
//  ContentView.swift
//  Animating
//
//  Created by Ashish Mankar on 02/01/25.
//

import SwiftUI

struct ContentView: View {
    @State var startAnimation = false
    
    var body: some View {
        ZStack {
            ForEach(0 ..< 10, id: \.self) { index in
                Circle()
                    .fill((Int(index) % 2 == 0) ? Color.black : Color.white)
                    .shadow(radius: 5)
                    .padding(12 * CGFloat(index))
                    .scaleEffect(startAnimation ? 0.96 : 1)
                    .animation(.easeInOut(duration: 1).repeatForever().delay(Double(index) * 0.2), value: startAnimation)
            }
        }
        .onAppear(perform: {
            startAnimation.toggle()
        })
    }
}

#Preview {
    ContentView()
}

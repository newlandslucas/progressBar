//
//  ContentView.swift
//  progressBar
//
//  Created by Lucas Machado (Estudos) on 04/07/22.
//

import SwiftUI

struct ContentView: View {
    @State var percent: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 100) {
            Text("\(Int(percent))%")
                .font(.system(size: 40, weight: .bold))
            
            
            ProgressBar(width: 300, height: 30, percent: percent, color1: Color.purple, color2: Color.blue)
                .animation(.spring())
            
            Button {
                percent = CGFloat.random(in: 0...100)
            } label: {
                Text("Generate Random Number")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

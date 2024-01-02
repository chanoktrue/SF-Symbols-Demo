//
//  ContentView.swift
//  SF Symbols Demo
//
//  Created by Thongchai Subsaidee on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    
    let symbls: [String] = ["sun.rain.fill", "moon.circle.fill", "cart.fill.badge.plus"]
    
    @State var i: Int = 0
    
    var body: some View {
        VStack {
            Image(systemName: symbls[i])
                .font(.system(size: 250))
                .symbolRenderingMode(.multicolor)
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 50)
            
            HStack {
                Image(systemName: "arrowshape.backward.circle")
                    .font(.system(size: 50))
                    .onTapGesture {
                        if i != 0 {i -= 1}
                    }
                Image(systemName: "arrowshape.forward.circle")
                    .font(.system(size: 50))
                    .onTapGesture {
                        if i != symbls.count - 1 { i += 1}
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

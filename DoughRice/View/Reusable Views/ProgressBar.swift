//
//  ProgressBar.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/20/22.
//

import SwiftUI

struct ProgressBar: View {
    
    @Binding var value: Float
    
    let colorStart: Color
    let colorEnd: Color
    
    var colorGradient: Gradient {
        Gradient(colors: [colorStart, colorEnd])
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                
                // Bottom layer
                Rectangle()
                    .fill(colorStart)
                
                    .opacity(0.9)
                
                    .frame(width: geometry.size.width,
                           height: geometry.size.height)
                
                // Top layer
                Rectangle()
                    .fill((LinearGradient(gradient: colorGradient,
                                          startPoint: .leading,
                                          endPoint: .trailing)))
                
                    .frame(width: min(CGFloat(self.value) * geometry.size.width, geometry.size.width),
                                  height: geometry.size.height)
                
                    .animation(.linear, value: value)
            }
            .cornerRadius(7)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(value: .constant(0.75),
                    colorStart: Color("OrangeStart"),
                    colorEnd: Color("OrangeEnd")).frame(height: 35)
            .padding()
    }
}

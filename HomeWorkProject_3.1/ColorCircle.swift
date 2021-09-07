//
//  ColorCircle.swift
//  HomeWorkProject_3.1
//
//  Created by Максим on 07.09.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color).contrast(0.5)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .green)
    }
}

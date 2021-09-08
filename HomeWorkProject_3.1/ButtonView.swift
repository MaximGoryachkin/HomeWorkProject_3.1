//
//  ButtonView.swift
//  HomeWorkProject_3.1
//
//  Created by Максим on 07.09.2021.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
            .frame(width: 200, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.some(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))))
            .overlay(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                        .stroke(Color.white, lineWidth: 4))
            .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ButtonView()
        }
    }
}

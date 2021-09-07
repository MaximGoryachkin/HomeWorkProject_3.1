//
//  ContentView.swift
//  HomeWorkProject_3.1
//
//  Created by Максим on 07.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red)
                ColorCircle(color: .yellow)
                ColorCircle(color: .green)
                Spacer()
                ZStack {
                    Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.8225171293, alpha: 1))
                        .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(12)
                        .padding()
                    Button(action: {}, label: {
                        Text("START")
                    })
                    .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

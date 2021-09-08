//
//  ContentView.swift
//  HomeWorkProject_3.1
//
//  Created by Максим on 07.09.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    private let isOn = 1.0
    private let isOff = 0.3
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red, opacity: redLight)
                ColorCircle(color: .yellow, opacity: yellowLight).padding()
                ColorCircle(color: .green, opacity: greenLight)
                Spacer()
                ZStack {
                    ButtonView()
                    Button(buttonTitle) {
                        buttonTitle = "NEXT"
                        
                        switch currentLight {
                        case .red:
                            greenLight = isOff
                            redLight = isOn
                            currentLight = CurrentLight.yellow
                        case .yellow:
                            redLight = isOff
                            yellowLight = isOn
                            currentLight = CurrentLight.green
                        case .green:
                            yellowLight = isOff
                            greenLight = isOn
                            currentLight = CurrentLight.red
                        }
                    }
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(width: 170, height: 70, alignment: .center)
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

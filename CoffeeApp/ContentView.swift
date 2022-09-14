//
//  ContentView.swift
//  CoffeeApp
//
//  Created by Shahad Bagarish on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    let appTitle = "Coffee ☕️"
    @State var milk = true
    @State var quantity = 0
    @State var range = 1...10
    @State var iced: Bool
    @State var suger: Bool

    
    var body: some View {
        VStack{
            Text(appTitle)
                .padding()
                .font(.largeTitle)
            Toggle(isOn: $milk) {
                Text("Include Milk 🥛")
            }
            Toggle(isOn: $iced) {
                Text("Iced 🧊")
            }
            Toggle(isOn: $suger) {
                Text("Spoon of Sugar 🍡 ")
            }
            Stepper(value: $quantity, in: range ) {
                Text("Quantity: 0")
            }
            Button("Order") {}

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(iced: true, suger: true)
    }
}

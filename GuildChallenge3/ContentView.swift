//
//  ContentView.swift
//  GuildChallenge3
//
//  Created by William Smith on 11/29/19.
//  Copyright © 2019 William Smith. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var userInput: String = ""
    @State var result: Double = 0.0
    @State var pickerValue: Int = 1
    @State var isShown = false
          
          var body: some View {
              VStack{
                  Spacer()
              TextField("Enter a tempurature", text: $userInput)
               
               Picker(selection: $pickerValue, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                   Text("To Celcius").tag(1)
                   Text("To Fahrenheit").tag(2)
               }.pickerStyle(SegmentedPickerStyle())
                  Button(action: {
                    // call function
                    // change boolean to show alert
                  }) {
                      Text("Convert")
                  }.alert(isPresented: $isShown){
                    Alert(//finish building alert)

                    }
                  Spacer()
               
              }.padding(40)
          }
          
          func convertTemp() {
              var tempToConvert: Double
              tempToConvert = Double(userInput)!
              
           if pickerValue == 1 {
               result = (tempToConvert - 32.0) * (5.0/9.0)
           } else {
               result = (tempToConvert * (9.0/5.0)) + 32
           }
              
          }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

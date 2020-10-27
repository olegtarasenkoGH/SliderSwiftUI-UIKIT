//
//  ContentView.swift
//  SliderSwiftUI
//
//  Created by Олег Тарасенко on 10/27/20.
//

import SwiftUI

struct ContentView: View {
    
    @ State private var targetValue = Double.random(in: 0...100)
    @ State var currentValue = 50.0

    var body: some View {
        
        VStack{
            
            Text("Подвиньте меня как можно ближе к: \(lround(targetValue))").bold()
                .padding()
            
            SliderView(currentValue: $currentValue)
   
            Text("\(lround(currentValue))")
                .padding()
            
            AlertButtonView(targetValue: currentValue)
            
            Button("Начать заново") { targetValue = Double.random(in: 0...100) }
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


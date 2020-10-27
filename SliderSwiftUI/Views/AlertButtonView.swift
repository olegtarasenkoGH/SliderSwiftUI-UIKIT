//
//  AlertButtonView.swift
//  SliderSwiftUI
//
//  Created by Олег Тарасенко on 10/27/20.
//

import SwiftUI

struct AlertButtonView: View {
    
    @State var showAlert = false
    var targetValue = 0.0
    
    var body: some View {
        
        Button("Проверь меня") { showAlert = true}
            .alert(isPresented: $showAlert) {
                Alert( title: Text("Слайдер показал"),
                       message: Text("число: \(lround(targetValue))"))
            }
            .padding()
    }
}



struct AlertButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AlertButtonView()
    }
}

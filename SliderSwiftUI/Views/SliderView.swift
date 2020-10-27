//
//  SliderView.swift
//  SliderSwiftUI
//
//  Created by Олег Тарасенко on 10/28/20.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var currentValue: Double

    
    var body: some View {
        HStack {
            Text("0").bold()
      
            UISliderView(currentValue: $currentValue, color: .blue)
                .colorMultiply(Color(red: 0, green: 0, blue: 1, opacity: currentValue/30))

            Text("100").bold()
                .padding(.vertical)
        }  .padding(.horizontal, 15)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(currentValue: .constant(20))
    }
}

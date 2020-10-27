//
//  UISlider.swift
//  SliderSwiftUI
//
//  Created by Олег Тарасенко on 10/27/20.
//

import SwiftUI

struct UISliderView: UIViewRepresentable {
   
    
    @Binding var currentValue: Double
    var color: UIColor
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.thumbTintColor = color
        slider.value = Float(currentValue)
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged),
            for: .valueChanged)
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(currentValue)
    }
    
    func makeCoordinator() -> UISliderView.Coordinator {
        Coordinator(currentValue: $currentValue)
    }
}

extension UISliderView {
    class Coordinator: NSObject {
        @Binding var currentValue: Double
        
        init(currentValue: Binding<Double>) {
            self._currentValue = currentValue
        }
        
        @objc func valueChanged(_ sender: UISlider){
        currentValue = Double(sender.value)
    }
}
}


struct UISliderView_Previews: PreviewProvider {
    static var previews: some View {
        UISliderView(currentValue: .constant(100), color: .blue)
    }
}

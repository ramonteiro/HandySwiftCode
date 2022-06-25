//
//  CustomButton.swift
//  CustomButton
//
//  Created by Raphael Monteiro on 24/06/22.
//

import SwiftUI

struct CustomButton: View {
    
    let label: String
    let color: Color
    let image: Image
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(label)
                    .font(.custom("Avenir-Medium", size: 20))
                    .foregroundColor(.white)
                image
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            .frame(width: 220, height: 30)
            .padding()
            .background(color)
            .cornerRadius(20.0)
            .padding()
        }
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(label: "START", color: .blue, image: Image(systemName: "stopwatch")) {
            print("")
        }
    }
}

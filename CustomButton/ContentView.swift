//
//  ContentView.swift
//  CustomButton
//
//  Created by Raphael Monteiro on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       
        CustomButton(label: "START", color: .blue, image: Image(systemName: "stopwatch")) {
            // Handle actions
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

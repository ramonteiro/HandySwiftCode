//
//  ContentView.swift
//  DarkmodeToggleView
//
//  Created by Raphael Monteiro on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isDarkmodeON = false
    @State private var isDarkmodeToggleON = false
    
    var body: some View {
            
        DarkmodeToggleView(darkmode: $isDarkmodeON, toggled: $isDarkmodeToggleON)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

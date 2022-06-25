//
//  ContentView.swift
//  InternetMonitor
//
//  Created by Raphael Monteiro on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var internetMonitor = InternetMonitor()
    
    var body: some View {
       
        Text("Internet disconnection autocheck")
        .alert(isPresented: $internetMonitor.isDeviceDisconnected) {
            Alert(title:
                    Text("Sorry, no Internet connection available."))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

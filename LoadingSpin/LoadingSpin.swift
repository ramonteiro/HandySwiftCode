import SwiftUI

struct ContentView: View {
    var body: some View {
        LoadingSpinView(tint: .blue)
    }
}

struct LoadingSpinView: View {
    let tint: Color
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .opacity(0.9)
                .ignoresSafeArea()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: tint))
                .scaleEffect(1.5)
        }
    }
}
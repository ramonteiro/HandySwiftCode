import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ControlTabBarView()
                .tabItem {
                    Label("View 1", systemImage: "magnifyingglass.circle.fill")
                }
            
            ControlTabBarView()
                .tabItem {
                    Label("View 2", systemImage: "gear")
                }
        }
    }
}

struct ControlTabBarView: View {
    @State private var isShowingTabBar = false
    
    var body: some View {
        Button(action: {
            isShowingTabBar.toggle()
        }, label: {
            Text(isShowingTabBar ? "Hide TabBar" : "Show TabBar")
        })
            .if(isShowingTabBar) { view in
                view.showTabBar()
            }
            .if(!isShowingTabBar) { view in
                view.hiddenTabBar()
            }
    }
}
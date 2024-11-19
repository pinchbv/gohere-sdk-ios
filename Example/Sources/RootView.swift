import SwiftUI
import GoHereSDK

struct RootView: View {
    
    init() {
        GohereSDK.initialize(
            appName: "GoHere",
            appRealm: "gohere",
            apiKey: "123456789"
        )
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.square")
                }
            GoHereView()
                .tabItem {
                    Label("Sdk", systemImage: "person.crop.square")
                }
        }
        .background(Color.red)
        .navigationViewStyle(.stack)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

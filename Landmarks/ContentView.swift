import SwiftUI
 
struct ContentView: View {
    @State private var selection: Tab = .featured  // 初期は Featuredタブ
 
    // Tabに関する列挙型を定義
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Image(systemName: "star")
                }
                
                .tag(Tab.featured)
 
            LandmarkList()
                .tabItem {
                    Image(systemName: "list.dash")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDisplayName("n1")
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11 Pro Max")
                .environmentObject(UserData())
        }
    }
}

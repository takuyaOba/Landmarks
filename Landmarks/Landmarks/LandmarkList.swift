import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    @State var showFavoritesOnly: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(landmarkData) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail()) {
                            LandmarkRow(landmark: landmark)
                            }
                        }
                    }
                }
        .navigationBarTitle(Text("Landmarks"))
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
        }
    }
}

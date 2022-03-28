import SwiftUI

struct HikeView: View {
    var hike: Hike
    @State private var showDetail = false

    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)  // ここでもKeyPath: 今回はHike.Observationであることは定義から自明なので，省略して \. と表記している
                    .frame(width: 50, height: 30)

                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }
                
                Spacer()

                Button(action: {
//                    withAnimation(.easeInOut(duration: 2)) { // 2秒かけてアクションを実行
                    self.showDetail.toggle()
//                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1)  // 三項演算子: 詳細表示している
                        .padding()
                        .animation(.easeInOut)  // アニメーション遷移についての定義
                }
            }

            if showDetail {
                HikeDetail(hike: self.hike)
            }
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HikeView(hike: hikeData[0])
                .padding()
            Spacer()
        }
    }
}

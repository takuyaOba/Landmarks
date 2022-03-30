//
//  ContentView.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/30.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI
 
struct ContentView: View {
    @State private var selection: Tab = .featured  // 初期は Featuredタブ
 
    // Tabに関する列挙型を定義
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {  // タブビュー：@State属性を扱う場合は $ を付与
            CategoryHome()
                .tag(Tab.featured)  // selectionが Tab.feturedのとき
 
            LandmarkList()
                .tag(Tab.list)  // selectionが Tab.listのとき
        }
    }
}

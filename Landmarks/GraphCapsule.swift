//
//  GraphCapsule.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/27.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

struct GraphCapsule: View {
        var index: Int                  // インデックス
        var height: CGFloat             // ビュー(外枠)の高さ
        var range: Range<Double>        // 楕円の大きさ = 観測データ範囲
        var overallRange: Range<Double> // 観測データ全体の範囲
        
        // 楕円の大きさ全体の範囲から算出
        var heightRatio: CGFloat {
            max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
        }
        
        // 楕円の位置を算出
        var offsetRatio: CGFloat {
            CGFloat((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
        }
        
        var body: some View {
            Capsule()
                .fill(Color.white)
                .frame(height: height * heightRatio)    // 必ずビューに収まるようにする
                .offset(x: 0, y: height * -offsetRatio)
        }
    }

struct GraphCapsule_Previews: PreviewProvider {
        static var previews: some View {
            GraphCapsule(index: 0, height: 150, range: 10..<50, overallRange: 0..<100)
        }
    }

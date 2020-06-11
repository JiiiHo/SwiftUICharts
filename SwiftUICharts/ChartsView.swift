//
//  ChartsView.swift
//  SwiftUICharts
//
//  Created by 신지호 on 2020/06/09.
//  Copyright © 2020 jiho. All rights reserved.
//

import SwiftUI

struct ChartsView: View {
    var randoms: [MyData]
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: geometry.size.width/28) {
                    ForEach(self.randoms) {random in
                        VStack {
                            Spacer()
                            Rectangle()
                                .fill(Color.purple)
                                .frame(width: geometry.size.width/14 , height: geometry.size.height*(CGFloat(random.amount)/120))
                            Text(random.formattedDate)
                                .font(.caption)
                                .frame(width: geometry.size.width/14, height: 40)
                        }
                    }
                }
            }
        }
    }
}

struct ChartsView_Previews: PreviewProvider {
    static let randoms: [MyData] = Bundle.main.decode("Data.json")
    static var previews: some View {
        ChartsView(randoms: randoms)
    }
}

//
//  ContentView.swift
//  SwiftUICharts
//
//  Created by 신지호 on 2020/06/05.
//  Copyright © 2020 jiho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let randoms: [MyData] = Bundle.main.decode("Data.json")
    var body: some View {
        ChartsView(randoms: randoms)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

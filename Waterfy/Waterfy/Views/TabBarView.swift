//
//  TabBarView.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Today().tabItem {
                Text("Today")
                Image(systemName: "15.square")
            }
            History().tabItem {
                Text("History")
                Image(systemName: "chart.bar")
            }
            Settings().tabItem {
                Text("Settings")
                Image(systemName: "gear")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

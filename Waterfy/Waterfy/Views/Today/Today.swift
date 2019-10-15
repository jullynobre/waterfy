//
//  Today.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct Today: View {
    @State var percentage: CGFloat = 0.8
    
    var body: some View {
        NavigationView {
            VStack {
                DayProgressCard()
                Spacer()
            }
            .navigationBarTitle(Text("Today"))
            .padding()
        }
    }
}

struct Today_Previews: PreviewProvider {
    static var previews: some View {
        Today()
    }
}

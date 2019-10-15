//
//  Today.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct Today: View {
    var body: some View {
        NavigationView {
            Text("Today View")
            
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

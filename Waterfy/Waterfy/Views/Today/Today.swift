//
//  Today.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI
import UIKit

struct Today: View {
    @State var percentage: CGFloat = 0.8
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    DayProgressCard()
                    
                    Divider()
                    
                    DrinksCollection(drinks: [
                        Drink(potion: 200),
                        Drink(potion: 200),
                        Drink(potion: 200),
                        Drink(potion: 200),
                        Drink(potion: 200)
                    ])
                    
                }
            }
            .navigationBarTitle(Text("Today"))
        }
    }
}

struct Today_Previews: PreviewProvider {
    static var previews: some View {
        Today()
    }
}

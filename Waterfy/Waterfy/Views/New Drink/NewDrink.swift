//
//  NewDrink.swift
//  Waterfy
//
//  Created by Diuli Nobre on 28/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct NewDrink: View {
    
    @State private var enableLogging = false
    @State private var selectedSize = 0
    private var sizes = ["200mL", "250mL", "500mL", "1000mL"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedSize, label: Text("Drink Size")) {
                        ForEach(0 ..< sizes.count) {
                            Text(self.sizes[$0]).tag($0)
                        }
                    }
                }
                Section(footer: Text("Swipe down the modal to dismiss")) {
                    Button(action: {
                    }) {
                        Text("Add Drink")
                    }
                }
            }
            .navigationBarTitle(Text("New Drink"))
        }
    }
}

struct NewDrink_Previews: PreviewProvider {
    static var previews: some View {
        NewDrink()
    }
}

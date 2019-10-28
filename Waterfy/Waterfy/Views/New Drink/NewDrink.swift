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
    @State private var selectedColor = 0
    @State private var colors = ["200mL", "250mL", "500mL", "1000mL"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Drink Size")) {
                    Picker(selection: $selectedColor, label: Text("Select the Drink Size")) {
                        ForEach(0 ..< colors.count) {
                            Text(self.colors[$0]).tag($0)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Swipe down the modal to dismiss")) {
                    Button(action: {
                    // activate theme!
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

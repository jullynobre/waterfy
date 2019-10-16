//
//  DrinkCard.swift
//  Waterfy
//
//  Created by Diuli Nobre on 16/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct DrinkCard: View {
    let drink: Drink
    
    var body: some View {
        HStack(alignment: .top) {
           VStack(alignment: .leading, spacing: 2) {
                Text("08:00").font(.system(size: 12))//.colorInvert()
                Text("200mL").bold()//.colorInvert()
            }
            Spacer()
            Image(systemName: "ellipsis.circle.fill")
            .imageScale(.large)
            .foregroundColor(Color.init(UIColor.systemBlue))
            .onTapGesture(perform: {
                print("Tapped")
            })
        }
        .padding()
        .background(Color.waterfySecondary)
        .cornerRadius(10)
    }
}

struct DrinkCard_Previews: PreviewProvider {
    static var previews: some View {
        DrinkCard(drink: Drink(potion: 200))
    }
}

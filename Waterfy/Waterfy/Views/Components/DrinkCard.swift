//
//  DrinkCard.swift
//  Waterfy
//
//  Created by Diuli Nobre on 16/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct DrinkCard: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 2) {
                Text("08:00").font(.system(size: 12)).colorInvert()
                Text("200mL").bold().colorInvert()
            }
            Spacer()
            
            Button(action: {
                print("Button Tapped")
            }) {
                Image(systemName: "ellipsis.circle.fill")
            }.foregroundColor(Color.white)
        }
    .padding()
    .background(Color.waterfyPrimary)
    .cornerRadius(10)
    }
}

struct DrinkCard_Previews: PreviewProvider {
    static var previews: some View {
        DrinkCard()
    }
}

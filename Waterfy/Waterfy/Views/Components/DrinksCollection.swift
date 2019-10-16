//
//  DrinksCollection.swift
//  Waterfy
//
//  Created by Diuli Nobre on 16/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct DrinksCollection: View {
    var drinks: [Drink]
    
    var body: some View {
        let drinksCuncked = drinks.chunked(into: 2)
        print(drinksCuncked.count)
        
        return (
            ForEach(0..<drinksCuncked.count) {row in
                HStack{
                    ForEach(0..<drinksCuncked[row].count) { col in
                        DrinkCard(drink: drinksCuncked[row][col])
                    }
                    if drinksCuncked[row].count < 2 {
                        Image(uiImage: UIImage())
                            .resizable().scaledToFill()
                            .frame(height: 10)
                    }
                }
            }
        )
    }
}

struct DrinksCollection_Previews: PreviewProvider {
    static var previews: some View {
        DrinksCollection(drinks: [Drink(potion: 200),
                                  Drink(potion: 200),
                                  Drink(potion: 200),
                                  Drink(potion: 200)])
    }
}

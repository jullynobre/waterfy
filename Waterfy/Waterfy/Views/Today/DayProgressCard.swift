//
//  DayProgressCard.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct DayProgressCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .bottom, spacing: 4) {
                Text("2000mL")
                    .font(.title)
                Text("/ 2000mL")
                    .font(.headline)
            }
            
        }
    }
}

struct DayProgressCard_Previews: PreviewProvider {
    static var previews: some View {
        DayProgressCard()
    }
}

//
//  DayProgressCard.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import SwiftUI

struct DayProgressCard: View {
    @State var barPercentage: CGFloat = 0.8
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .bottom, spacing: 4) {
                Text("2000mL")
                    .font(.system(size: 22))
                    .bold()
                Text("/ 2000mL")
                    .font(.headline)
            }
            ProgressBar(percentage: $barPercentage).frame(height: 8, alignment: .bottom)
        }.padding()
        .cornerRadius(20)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct DayProgressCard_Previews: PreviewProvider {
    static var previews: some View {
        DayProgressCard()
    }
}

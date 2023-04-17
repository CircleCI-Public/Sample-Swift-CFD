//
//  FoodRow.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/14/23.
//

import SwiftUI

struct FoodRow: View {
    var food: Food
    
    var body: some View {
        HStack{
            food.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(food.name)
            
            Spacer()
        }
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var foods = ModelData().foods
    static var previews: some View {
        Group {
            FoodRow(food: foods[0])
            FoodRow(food: foods[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

//
//  FoodList.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/14/23.
//

import SwiftUI

struct FoodList: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            List(modelData.foods) { food in
                NavigationLink {
                    FoodDetail(food: food)
                } label: {
                    FoodRow(food: food)
                }
            }
            .navigationTitle("Food")
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList().environmentObject(ModelData())
    }
}

//
//  ContentView.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                FoodList()
                NavigationLink {
                    CartList()
                } label: {
                    Label("My Cart", systemImage: "")
                        .padding(.horizontal)
                }.padding(.leading, 10.0).buttonStyle(.bordered)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}

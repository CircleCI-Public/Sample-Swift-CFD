//
//  Background.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/14/23.
//

import SwiftUI

struct Background: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.00, green: 0.22, blue: 0.25, alpha: 1.0))
            .ignoresSafeArea()
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}

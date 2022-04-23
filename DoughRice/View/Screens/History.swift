//
//  History.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/22/22.
//

import SwiftUI

struct History: View {
    var body: some View {
        NavigationView {
            Text("History here...")
                .font(.title)
                .fontWeight(.medium)
                .navigationTitle("History")
                .offset(y: -60)
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}

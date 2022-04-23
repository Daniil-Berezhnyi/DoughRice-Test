//
//  Goals.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/22/22.
//

import SwiftUI

struct Goals: View {
    var body: some View {
        NavigationView {
            Text("Goals here...")
                .font(.title)
                .fontWeight(.medium)
                .navigationTitle("Goals")
                .offset(y: -60)
        }
    }
}

struct Goals_Previews: PreviewProvider {
    static var previews: some View {
        Goals()
    }
}

//
//  Transactions.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/22/22.
//

import SwiftUI

struct Transactions: View {
    var body: some View {
        NavigationView {
            Text("Transactions here...")
                .font(.title)
                .fontWeight(.medium)
                .navigationTitle("Transactions")
                .offset(y: -60)
        }
    }
}

struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        Transactions()
    }
}

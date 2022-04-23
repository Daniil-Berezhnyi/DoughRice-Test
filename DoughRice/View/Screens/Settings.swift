//
//  Settings.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/22/22.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView {
            Text("Settings here...")
                .font(.title)
                .fontWeight(.medium)
                .navigationTitle("Settings")
                .offset(y: -60)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

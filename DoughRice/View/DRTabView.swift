//
//  DRTabView.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/22/22.
//

import SwiftUI

struct DRTabView: View {
    var body: some View {
        TabView {
            Homepage().tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            History().tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("History")
                }
            
            Transactions().tabItem {
                    Image(systemName: "plus.circle")
                    Text("Transactions")
                }
            
            Goals().tabItem {
                    Image(systemName: "building.2")
                    Text("Goals")
                }
            
            Settings().tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

struct DRTabView_Previews: PreviewProvider {
    static var previews: some View {
        DRTabView()
    }
}

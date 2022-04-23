//
//  Budget.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/21/22.
//

import Foundation
import SwiftUI

struct Budget: Hashable, Identifiable {
    let id = UUID()
    
    let name: String
    let budget: Float
    let image: String
    let colorStart: Color
    let colorEnd: Color
    
    var progressValue: Float
}

struct MockData {
    static let rent      = Budget(name: "Rent",
                                  budget: 2000,
                                  image: "house.circle",
                                  colorStart: Color("GreenStart"),
                                  colorEnd: Color("GreenEnd"),
                                  progressValue: 0.7)
    
    static let loans     = Budget(name: "School Loans",
                                  budget: 750,
                                  image: "dollarsign.circle",
                                  colorStart: Color("PurpleStart"),
                                  colorEnd: Color("PurpleEnd"),
                                  progressValue: 0.5)
    
    static let food      = Budget(name: "Food",
                                  budget: 400,
                                  image: "cart.circle",
                                  colorStart: Color("OrangeStart"),
                                  colorEnd: Color("OrangeEnd"),
                                  progressValue: 0.33)
    
    static let transport = Budget(name: "Transportation",
                                  budget: 275,
                                  image: "car.circle",
                                  colorStart: Color("BlueStart"),
                                  colorEnd: Color("BlueEnd"),
                                  progressValue: 0.25)
    
    static let shopping  = Budget(name: "Shopping",
                                  budget: 350, image: "bag.circle",
                                  colorStart: Color("PinkStart"),
                                  colorEnd: Color("PinkEnd"),
                                  progressValue: 0.8)
    
    static let utilities = Budget(name: "Utilities",
                                  budget: 50, image: "bolt.circle",
                                  colorStart: Color("RedStart"),
                                  colorEnd: Color("RedEnd"),
                                  progressValue: 0.7)
    
    static let budgets = [shopping, food, transport, loans, rent, utilities]
}

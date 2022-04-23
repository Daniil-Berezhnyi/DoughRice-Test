//
//  BudgetBlock.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/21/22.
//

import SwiftUI

struct BudgetBlock: View {
    
    @State var budgetTitle: String
    @State var progressValue: Float
    @State var progressBarColorStart: Color
    @State var progressBarColorEnd: Color
    @State var budgetImage: String
    
    var body: some View {
        
        VStack {
            
            // Category
            Text(budgetTitle)
                .font(.system(size: 16, weight: .semibold))
                .offset(y: 7)
            
            // Progress Bar
            ProgressBar(value: $progressValue,
                        colorStart: progressBarColorStart,
                        colorEnd: progressBarColorEnd)
            .frame(height: 20)
            .padding(.horizontal, 10)
            
            // Percentage %
            Text("75% of Budget Spent")
                .font(.system(size: 12))
                .italic()
                .offset(y: -4)
            
            Spacer()
            
            // Breakdown
            HStack {
                VStack(spacing: 2) {
                    HStack {
                        Text("Budget")
                        Spacer()
                        Text("$900")
                    }
                    
                    HStack {
                        Text("Spent")
                        Spacer()
                        Text("$250")
                            .foregroundColor(.red)
                    }
                    
                    HStack {
                        Text("Left")
                        Spacer()
                        Text("$650")
                            .foregroundColor(Color("GreenEnd"))
                    }
                }
                .padding(.horizontal, 10)
                
                Image(systemName: budgetImage)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(progressBarColorEnd)
                    .offset(x: -5)
                
                Spacer()
            }
            .font(.system(size: 13))
            
            Spacer()
            
        }
        .frame(width: 180, height: 135)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(.primary, lineWidth: 0.35)
            .shadow(radius: 3))
    }
}

struct BudgetBlock_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BudgetBlock(budgetTitle: "Rent",
                        progressValue: 0.6,
                        progressBarColorStart: Color("GreenStart"),
                        progressBarColorEnd: Color("GreenEnd"),
                        budgetImage: "house.circle")
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.portrait)
        }
    }
}

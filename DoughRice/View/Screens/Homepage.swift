//
//  ContentView.swift
//  DoughRice
//
//  Created by Daniel Berezhnoy on 4/19/22.
//

import SwiftUI

struct Homepage: View {
    @State private var progressMain: Float = 0.8
    
    var body: some View {
        VStack(spacing: 10) {
            SelectMonthView()
            BudgetOverview(barProgress: progressMain)
            BudgetBreakdown()
        }
    }
}


struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}


struct SelectMonthView: View {
    var body: some View {
        HStack {
            Text("September 2021 >")
                .font(.title3)
                .padding(.horizontal, 80)
                .offset(x: 18)
            
            Button {
                print("'+' Button pressed!")
            } label: {
                Image(systemName: "plus")
                    .font(.title2)
                    .foregroundColor(.primary)
                    .padding(.trailing, 5)
            }
        }
    }
}

struct BudgetOverview: View {
    
    @State var barProgress: Float
    
    var body: some View {
        VStack(spacing: 8) {
            // Month and Plus Button
            
            
            // How much spent
            Text("$0 Spent of $6,000 ")
                .font(.title2)
                .fontWeight(.medium)
            
            // Progress Bar
            ProgressBar(value: $barProgress,
                        colorStart: Color("GreenStart"),
                        colorEnd: Color("GreenEnd"))
            .frame(height: 40)
            .padding(.horizontal)
            
            // How much left
            HStack {
                Text("$6,000 Left")
                    .fontWeight(.semibold)
                Spacer()
                Text("$1,000 Spent")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal)
            .font(.footnote)
        }
    }
}

struct BudgetBreakdown: View {
    var body: some View {
        
        let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
        
        VStack(spacing: 7) {
            // Budget Breakdown
            Text("Breakdown of your Budget")
                .font(.headline)
            
            // "Sort" Label
            HStack {
                Text("Sort: Alphabetical Order")
                    .font(.callout)
                Spacer()
            }
            .padding(.horizontal)
            
            // Grid of "BudgetBlocks"
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.budgets) { budgetView in
                        BudgetBlock(budgetTitle: budgetView.name,
                                    progressValue: budgetView.progressValue,
                                    progressBarColorStart: budgetView.colorStart,
                                    progressBarColorEnd: budgetView.colorEnd,
                                    budgetImage: budgetView.image)
                        .padding(5)
                    }
                }
            }
        }
    }
}

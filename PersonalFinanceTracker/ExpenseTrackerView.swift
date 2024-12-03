//
//  ExpenseTrackerView.swift
//  PersonalFinanceTracker
//
//  Created by Keerthana Ramesh on 12/2/24.
//

import SwiftUI


struct ExpenseTrackerView: View {
    @State private var expenses: [Expense] = []
    @State private var budget: Budget? = Budget(month: "December", budgetAmount: 1000)
    @State private var showAddExpenseView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                // Monthly Budget Overview
                if let budget = budget {
                    HStack {
                        Text("Monthly Budget: \(budget.month)")
                            .font(.title)
                            .padding()
                        
                        Spacer()
                        
                        Text("$\(budget.budgetAmount, specifier: "%.2f")")
                            .font(.title)
                            .bold()
                            .padding()
                    }
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                }
                
                // List of Expenses
                List {
                    ForEach(expenses) { expense in
                        ExpenseRow(expense: expense)
                    }
                    .onDelete(perform: deleteExpense)
                }
                .listStyle(PlainListStyle())
                
                Spacer()
                
                // Add Expense Button
                Button(action: {
                    showAddExpenseView.toggle()
                }) {
                    Text("Add New Expense")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }
                .padding()
                .sheet(isPresented: $showAddExpenseView) {
                    AddExpenseView(expenses: $expenses)
                }
            }
            .navigationTitle("Track Expenses")
        }
    }
    
    // Delete expense from the list
    func deleteExpense(at offsets: IndexSet) {
        expenses.remove(atOffsets: offsets)
    }
}

struct ExpenseRow: View {
    var expense: Expense
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(expense.title)
                    .font(.headline)
                Text(expense.category)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text("$\(expense.amount, specifier: "%.2f")")
                .bold()
        }
        .padding(.vertical, 5)
    }
}


#Preview {
    ExpenseTrackerView()
}

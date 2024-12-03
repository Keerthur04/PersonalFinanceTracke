//
//  ExpenseTrackerView.swift
//  PersonalFinanceTracker
//
//  Created by Keerthana Ramesh on 12/2/24.
//



import SwiftUI


struct ExpenseTrackerView: View {
    @State private var expenses: [Expense] = []
    @State private var budgets: [Budget] = [
        Budget(month: "December", budgetAmount: 500)
    ] 
    @State private var showingAddExpenseView = false
    @State private var showingAddBudgetView = false
    @State private var newBudgetMonth: String = ""
    @State private var newBudgetAmount: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Personal Finance Tracker")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                // Display budgets
                List {
                    ForEach(budgets, id: \.month) { budget in
                        VStack(alignment: .leading) {
                            Text("\(budget.month) Budget")
                                .font(.headline)
                            Text("$\(budget.budgetAmount, specifier: "%.2f")")
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.purple.opacity(0.7)]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                        .padding()
                    }
                }

                Spacer()
// Add Expense Button
                Button(action: {
                    showingAddExpenseView.toggle()
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                        Text("Add Expense")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color.green))
                    .shadow(radius: 10)
                }
                .padding(.bottom)
                .sheet(isPresented: $showingAddExpenseView) {
                    AddExpenseView(expenses: $expenses)
                }

                
                Button(action: {
                    showingAddBudgetView.toggle()
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                        Text("Add Budget")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue))
                    .shadow(radius: 10)
                }
                .padding(.bottom)
                .sheet(isPresented: $showingAddBudgetView) {
                    VStack {
                        Text("Create New Budget")
                            .font(.title)
                            .fontWeight(.bold)

                        TextField("Enter Month", text: $newBudgetMonth)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        TextField("Enter Amount", text: $newBudgetAmount)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        Button(action: {
                            if let amount = Double(newBudgetAmount), !newBudgetMonth.isEmpty {
                                let newBudget = Budget(month: newBudgetMonth, budgetAmount: amount)
                                budgets.append(newBudget)
                                newBudgetMonth = ""
                                newBudgetAmount = ""
                                showingAddBudgetView = false
                            }
                        }) {
                            Text("Save Budget")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.green)
                                .cornerRadius(10)
                        }
                        .padding()
                    }
                    .padding()
                }
            }
        }
    }
}
    
    var calendarButton: some View {
        Button(action: {
            openCalendarApp()
        }) {
            HStack {
                Image(systemName: "calendar")
                    .font(.title2)
                    .foregroundColor(.blue)
                Text("Open Calendar")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
            .shadow(radius: 5)
        }
        .padding(.bottom)
    }
    
    private func openCalendarApp() {
        if let url = URL(string: "calshow://") {
            UIApplication.shared.open(url)
        }
    }

struct ExpenseTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseTrackerView()
    }
}


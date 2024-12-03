import SwiftUI

struct ContentView: View {
    @State private var expenses: [Expense] = []
    @State private var budget: Budget? = Budget(month: "December", budgetAmount: 1000)
    @State private var showingAddExpenseView = false
    
    var body: some View {
        NavigationView {
            VStack {
                // Header with the current budget
                VStack {
                    Text("Personal Finance Tracker")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    if let budget = budget {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Monthly Budget")
                                    .font(.headline)
                                Text("$\(budget.budgetAmount, specifier: "%.2f")")
                                    .font(.title2)
                                    .fontWeight(.bold)
                            }
                            .padding()
                            
                            Spacer()
                            
                            Image(systemName: "creditcard.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.green)
                        }
                        .background(RoundedRectangle(cornerRadius: 15).fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.purple.opacity(0.7)]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                        .padding()
                    }
                }
                
                // List of expenses
                List {
                    ForEach(expenses) { expense in
                        HStack {
                            Image(systemName: expense.categoryIcon)
                                .foregroundColor(.blue)
                            
                            VStack(alignment: .leading) {
                                Text(expense.title)
                                    .font(.headline)
                                Text("$\(expense.amount, specifier: "%.2f")")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            Text(expense.date, style: .date)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(radius: 5))
                    }
                }
                .listStyle(PlainListStyle())
                
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
            }
            .navigationBarHidden(true)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


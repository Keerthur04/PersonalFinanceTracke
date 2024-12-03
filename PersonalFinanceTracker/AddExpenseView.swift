//
//  AddExpenseView.swift
//  PersonalFinanceTracker
//
//  Created by Keerthana Ramesh on 12/2/24.
//

import SwiftUI

struct AddExpenseView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var expenses: [Expense]
    
    @State private var title = ""
    @State private var amount = ""
    @State private var selectedCategory = "Food"
    @State private var date = Date()
    
    let categories = ["Food", "Transport", "Entertainment", "Bills"]
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // Expense Title
                    Section(header: Text("Expense Details")) {
                        TextField("Enter expense title", text: $title)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    // Amount
                    Section {
                        TextField("Amount", text: $amount)
                            .keyboardType(.decimalPad)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    // Category Picker
                    Section {
                        Picker("Category", selection: $selectedCategory) {
                            ForEach(categories, id: \.self) { category in
                                Text(category)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    
                    // Date Picker
                    Section {
                        DatePicker("Date", selection: $date, displayedComponents: .date)
                            .padding()
                    }
                }
                
                // Save Button
                Button("Save Expense") {
                    if let amount = Double(amount), !title.isEmpty {
                        let expense = Expense(
                            title: title,
                            amount: amount,
                            date: date,
                            category: selectedCategory,
                            categoryIcon: getCategoryIcon(for: selectedCategory)
                        )
                        expenses.append(expense)
                        presentationMode.wrappedValue.dismiss() // Close the view
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue))
                .foregroundColor(.white)
                .font(.headline)
            }
            .navigationTitle("Add Expense")
            .navigationBarItems(leading: Button("Cancel") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
    
    func getCategoryIcon(for category: String) -> String {
        switch category {
        case "Food":
            return "cart.fill"
        case "Transport":
            return "car.fill"
        case "Entertainment":
            return "film.fill"
        case "Bills":
            return "house.fill"
        default:
            return "questionmark.circle.fill"
        }
    }
}

struct AddExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpenseView(expenses: .constant([]))
    }
}

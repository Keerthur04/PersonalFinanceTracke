//
//  ExpenseModels.swift
//  PersonalFinanceTracker
//
//  Created by Keerthana Ramesh on 12/2/24.
//

import Foundation


// Model for an individual expense
struct Expense: Identifiable {
    var id = UUID()  // Unique identifier for each expense
    var title: String  // Name or title of the expense
    var amount: Double  // The amount of the expense
    var date: Date  // Date when the expense occurred
    var category: String  // Category of the expense (e.g., "Food", "Transport")
    var categoryIcon: String  // Icon related to the category (e.g., "cart.fill")
}

// Model for a monthly budget
struct Budget: Identifiable {
    var id = UUID()  // Unique identifier for each budget
    var month: String  // Month of the budget (e.g., "December")
    var budgetAmount: Double  // The total budget amount for that month
}


//
//  ExpenseModels.swift
//  PersonalFinanceTracker
//
//  Created by Keerthana Ramesh on 12/2/24.
//

import Foundation



struct Expense: Identifiable {
    var id = UUID()
    var title: String
    var amount: Double
    var date: Date
    var category: String
    var categoryIcon: String
}


struct Budget: Identifiable {
    var id = UUID()
    var month: String
    var budgetAmount: Double  
}


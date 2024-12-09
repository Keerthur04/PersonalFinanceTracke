# Monthly Budget Creator - Swift Xcode App

## Overview
The **Monthly Budget Creator** is a user-friendly iOS application built with **Swift** and **Xcode**, designed to help users create, track, and manage their monthly budgets. The app allows users to enter their income and expenses, set category budgets, and view insights into their financial habits using charts and graphs. It supports setting goals, recurring expenses, and gives notifications when users approach their budget limits.

## Features

### User Authentication (Optional for personal use):
- Users can create an account with email/password or skip this for local data storage.
- If authentication is not required, users can simply open the app and start entering their financial data.

### Budget Dashboard:
- **Overview**: Displays the total income, total expenses, and remaining budget for the month.
- **Graphical Representation**: Includes interactive charts (pie charts and bar graphs) to visually show income distribution, spending patterns, and progress toward financial goals.

### Income and Expense Tracking:
- **Income Entry**: Allows users to enter their monthly income (salary, freelance, etc.) and view an organized summary.
- **Expense Entry**: Users can categorize their expenses (e.g., groceries, rent, entertainment) and add one-time or recurring expenses.
- **Expense Categories**: Expenses can be grouped for better financial tracking and analysis.

### Budget Setting:
- Users can allocate budgets to various categories (e.g., $300 for groceries, $150 for entertainment).
- The app tracks if users are nearing or exceeding their budget for any category.

### Goal Tracking:
- Users can set financial goals (e.g., saving $1,000 for a vacation) and monitor their progress over time.
- Budget allocation can be adjusted to meet financial goals based on savings progress.

### Notifications:
- Users can receive notifications when they are close to exceeding their budget in any category.
- Notifications for recurring expenses (e.g., rent, subscriptions).

### Financial Reports:
- Users can generate reports based on the data entered for tracking monthly expenses, savings, and financial habits.
- Users can view the report directly in the app or export it to CSV for further analysis.

### Currency Support:
- The app allows users to select their preferred currency for transactions and budgeting.

### Responsive Design:
- The app is designed for both **iPhone** and **iPad** with a clean and intuitive interface.

## Technologies Used
- **Swift**: For the app's core functionality.
- **Xcode**: The Integrated Development Environment (IDE) used to build the app.
- **CoreData**: For local data storage, allowing users to save income, expenses, budget categories, and goals directly on their device.
- **Charts**: A library to display interactive charts and graphs for financial insights.
- **UserNotifications**: To handle notifications for budget alerts and recurring expenses.
- **CoreGraphics**: For custom chart and graphical designs.

## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/Keerthur04/Monthly-Budget-App.git
   cd Monthly-Budget-App

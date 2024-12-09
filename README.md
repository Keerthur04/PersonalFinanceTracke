Monthly Budget Creator - Swift Xcode App
Overview
The Monthly Budget Creator is a user-friendly iOS application built with Swift and Xcode, designed to help users create, track, and manage their monthly budgets. The app allows users to enter their income and expenses, set category budgets, and view insights into their financial habits using charts and graphs. It supports setting goals, recurring expenses, and gives notifications when users approach their budget limits.

Features
User Authentication (Optional for personal use):

Users can create an account with email/password or skip this for local data storage.
If authentication is not required, users can simply open the app and start entering their financial data.
Budget Dashboard:

Overview: Displays the total income, total expenses, and remaining budget for the month.
Graphical Representation: Includes interactive charts (pie charts and bar graphs) to visually show income distribution, spending patterns, and progress toward financial goals.
Income and Expense Tracking:

Income Entry: Allows users to enter their monthly income (salary, freelance, etc.) and view an organized summary.
Expense Entry: Users can categorize their expenses (e.g., groceries, rent, entertainment) and add one-time or recurring expenses.
Expense Categories: Expenses can be grouped for better financial tracking and analysis.
Budget Setting:

Users can allocate budgets to various categories (e.g., $300 for groceries, $150 for entertainment).
The app tracks if users are nearing or exceeding their budget for any category.
Goal Tracking:

Users can set financial goals (e.g., saving $1,000 for a vacation) and monitor their progress over time.
Budget allocation can be adjusted to meet financial goals based on savings progress.
Notifications:

Users can receive notifications when they are close to exceeding their budget in any category.
Notifications for recurring expenses (e.g., rent, subscriptions).
Financial Reports:

Users can generate reports based on the data entered for tracking monthly expenses, savings, and financial habits.
Users can view the report directly in the app or export it to CSV for further analysis.
Currency Support:

The app allows users to select their preferred currency for transactions and budgeting.
Responsive Design:

The app is designed for both iPhone and iPad with a clean and intuitive interface.
Technologies Used
Swift: For the app's core functionality.
Xcode: The Integrated Development Environment (IDE) used to build the app.
CoreData: For local data storage, allowing users to save income, expenses, budget categories, and goals directly on their device.
Charts: A library to display interactive charts and graphs for financial insights.
UserNotifications: To handle notifications for budget alerts and recurring expenses.
CoreGraphics: For custom chart and graphical designs.
Installation
Clone the repository:
bash
Copy code
git clone https://github.com/Keerthur04/Monthly-Budget-App.git
cd Monthly-Budget-App
Open the project in Xcode:

Navigate to the project directory and open the .xcodeproj or .xcworkspace file in Xcode.
Install dependencies:

Open Xcode's terminal and run the following command to install the Charts library using CocoaPods:
bash
Copy code
pod install
Run the App:

Build and run the app on the iOS Simulator or a connected iPhone.
User Flow
Landing Screen:

The user sees a welcome screen with options to Start and begin managing their budget.
Dashboard:

After entering data, users are directed to the Dashboard, where they can view their total income, total expenses, and remaining budget for the month.
The dashboard also includes pie charts and bar graphs to visualize the financial breakdown.
Adding Income and Expenses:

Income: Users can click on the "Add Income" button and input the source and amount of income (e.g., salary, freelance).
Expense: Users can add expenses, choose a category (e.g., groceries, rent), and input the amount.
Users can also choose if the expense is recurring and set how often it repeats.
Setting and Tracking Budgets:

Users can set monthly limits for each category (e.g., $300 for groceries, $150 for entertainment).
The app will track spending against the set budget and notify users if they approach or exceed their budget.
Financial Goals:

Users can set financial goals (e.g., saving for a vacation), and the app tracks progress based on income and spending habits.
Notifications:

Users will receive local notifications when they are close to exceeding their budget or when a recurring expense is due.
Generate Reports:

Users can generate a financial report showing a breakdown of expenses and savings.
Reports can be viewed in-app or exported to CSV for offline use.
Screenshots
Dashboard: View of total income, expenses, and remaining budget, along with charts.
Income Entry: Form to enter income sources.
Expense Tracker: Form to input expenses and categorize them.
Budgeting: Setting category budgets and monitoring them.
Reports: Displaying financial reports with detailed analysis.
Future Enhancements
Dark Mode: Implement support for dark mode to enhance the user experience in low-light environments.
Cloud Syncing: Sync the app’s data across multiple devices using iCloud.
Expense Prediction: Introduce machine learning to predict future spending and suggest ways to save.
Bank Account Integration: Allow users to link their bank accounts for automatic expense tracking.
AI Financial Insights: Offer recommendations based on users' spending and saving behavior to improve their finances.
License
This project is licensed under the MIT License - see the LICENSE file for details.

Contact
For questions or suggestions, feel free to reach out to keerthur2004@gmail.com.

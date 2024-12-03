import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                VStack {
                    Text("Welcome to the Finance Tracker")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(.top, 40)
                    
                    Text("Track your monthly expenses and stay within your budget.")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding(.bottom, 30)
                }

                
                NavigationLink(destination: ExpenseTrackerView()) {
                    Text("Go to Expense Tracker")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.blue, Color.purple]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                }
                
                
                HStack {
                    
                    calendarButton
                    
                    homeButton
                }
                .padding(.bottom, 30)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Home")
            .padding(.horizontal)
            .background(Color.white) //
            .cornerRadius(15)
            .shadow(radius: 10)
        }
    }

    
    var homeButton: some View {
        Button(action: {
            
            print("Home tapped")
        }) {
            HStack {
                Image(systemName: "house.fill")
                    .font(.title2)
                    .foregroundColor(.blue)
                Text("Home")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 5)
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    // Calendar Button
    var calendarButton: some View {
        Button(action: {
            openCalendarApp() 
        }) {
            HStack {
                Image(systemName: "calendar")
                    .font(.title2)
                    .foregroundColor(.blue)
                Text("Open Calendar")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 5)
        }
        .buttonStyle(PlainButtonStyle())
    }

    private func openCalendarApp() {
        if let url = URL(string: "calshow://") {
            UIApplication.shared.open(url)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}


import SwiftUI

struct LocationListView: View {
    var body: some View {
            VStack(spacing: 200) {
                Spacer()
                Text("Step 2) See which locations are next to you")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top, 20)
                
                List {
                    NavigationLink(destination: ContentView()) {
                        
                        
                        Text("Brooklyn")
                            .foregroundColor(Color.blue)
                    }
                    NavigationLink(destination: ContentView()) {                        Text("New York City")
                        
                            .foregroundColor(Color.blue)
                    }
                    NavigationLink(destination: ContentView()) {                        Text("New Jersey")
                            .foregroundColor(Color.blue)
                    }
                    NavigationLink(destination: ContentView()) {                        Text("Philadelphia, NY")
                            .foregroundColor(Color.blue)
                    }
                    NavigationLink(destination: ContentView()) {                        Text("Rochester, NY")
                            .foregroundColor(Color.blue)
                    }
                        
                    
                }
                .listStyle(PlainListStyle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
        }
    }


struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

import SwiftUI

struct LocationListView: View {
    let locations = ["Brooklyn", "New York City", "New Jersey", "Philadelphia, NY", "Rochester, NY"]
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
                
                List(locations, id: \.self) { location in
                               NavigationLink(destination: ContentView()) {
                                   Text(location)
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

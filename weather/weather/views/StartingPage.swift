//
//  WelcomeView.swift
//  weather
//
//  Created by user243761 on 11/19/23.
//
import CoreLocationUI
import SwiftUI

struct StartingPage: View {
  @EnvironmentObject var locationManager: LocationManager

  var body: some View {
    NavigationView {  // Embed in NavigationView
      VStack {
                  AsyncImage(url: URL(string: "https://www.freeiconspng.com/thumbs/weather-icon-png/weather-icon-png-8.png")) { phase in
          if let image = phase.image {
            image  // Displays the loaded image.
              .resizable()
              .scaledToFit()
          } else if phase.error != nil {
            Text("There was an error loading the image.")  // Indicates an error.
          } else {
            ProgressView()  // Shows a progress view while loading.
          }
        }
        .frame(width: 200, height: 200)  // Set your desired frame for the image.

        VStack(spacing: 20) {
          Text("BEST WEATHER APP")
            .bold()
            .font(.title)
            .foregroundColor(.orange)

          Text("Start Now and know the Weather is currrently in 2 Steps")
            .padding()
            .foregroundColor(.yellow)
        }
        .multilineTextAlignment(.center)
        .padding()
       
          NavigationLink(destination: LocationListView()) {
          Text("Go to Locations")
            .foregroundColor(.white)
            .padding()
            .background(Color.green)
            .cornerRadius(10)
        }
              }
      // LocationButton from CoreLocationUI framework imported above, allows us to requestionLocation

      .cornerRadius(30)
      .symbolVariant(.fill)
      .foregroundColor(.purple)
    
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom))
    .edgesIgnoringSafeArea(.all)
  }
}

struct StartingPage_Previews: PreviewProvider {
  static var previews: some View {
    StartingPage()
  }
}

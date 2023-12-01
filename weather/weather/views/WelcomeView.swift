//
//  WelcomeView.swift
//  weather
//
//  Created by user243761 on 11/19/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack {
            
            AsyncImage(url: URL(string: "https://freepngimg.com/thumb/categories/2275.png")) { phase in
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
                Text("Welcome to the Weather App")
                    .bold()
                    .font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            
            // LocationButton from CoreLocationUI framework imported above, allows us to requestionLocation
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

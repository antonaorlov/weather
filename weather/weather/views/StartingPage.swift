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
    @State private var buttonOpacity: Double = 0
  var body: some View {
    NavigationView {
      VStack {
                  AsyncImage(url: URL(string: "https://www.freeiconspng.com/thumbs/weather-icon-png/weather-icon-png-8.png")) { phase in
          if let image = phase.image {
            image
              .resizable()
              .scaledToFit()
          } else if phase.error != nil {
            Text("There was an error loading the image.")
            ProgressView()
          }
        }
        .frame(width: 200, height: 200)
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
          .opacity(buttonOpacity)
                          .onAppear {
                              withAnimation(.easeIn(duration: 2.0)) {
                                  buttonOpacity = 1
                              }
                          }              }
      
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

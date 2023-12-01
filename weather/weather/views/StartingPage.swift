//
//  WelcomeView.swift
//  weather
//
//  Created by user243761 on 11/19/23.
//

import SwiftUI
import CoreLocationUI

struct StartingPage: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        NavigationView { // Embed in NavigationView
            VStack {
                VStack(spacing: 20) {
                    Text("BEST WEATHER APP")
                        .bold()
                        .font(.title)
                        .foregroundColor(.orange)
                    
                    Text("Start Now and know the Weather is currrently in 2 Steps")
                        .padding()
                    .foregroundColor(.yellow)            }
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
        .background(Color.purple) // Set the background color to purple
                }
}

struct StartingPage_Previews: PreviewProvider {
    static var previews: some View {
        StartingPage()
    }
}

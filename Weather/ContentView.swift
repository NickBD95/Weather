//
//  ContentView.swift
//  Weather
//
//  Created by Nikolai Grachev on 22.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                 
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                

                
                HStack(spacing: 20) {
                    WeatherDayView(
                        dayOfWeak: "TUE",
                        imageName: "cloud.sun.fill",
                        temperature: 74
                    )
                    
                    WeatherDayView(
                        dayOfWeak: "WED",
                        imageName: "sun.max.fill",
                        temperature: 88
                    )
                    
                    WeatherDayView(
                        dayOfWeak: "THU",
                        imageName: "wind.snow",
                        temperature: 55
                    )
                    
                    WeatherDayView(
                        dayOfWeak: "FRI",
                        imageName: "sunset.fill",
                        temperature: 60
                    )
                    
                    WeatherDayView(
                        dayOfWeak: "SAT",
                        imageName: "snow",
                        temperature: 25
                    )
                    
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeak: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeak)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

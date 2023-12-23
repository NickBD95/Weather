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
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                 
               MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                
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
                    WeatherButton(
                        title: "Change Day Time",
                        textColor: .blue,
                        backgroundColor: .white
                    )
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

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}



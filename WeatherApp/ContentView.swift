//
//  ContentView.swift
//  WeatherApp
//
//  Created by Oğuzhan Yavuz on 9.09.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack{
                cityTextView(cityName: "İstanbul, TR")
                
                mainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 31)
                
                HStack(spacing:20){
                    
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 31)
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 32)

                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 25)

                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 28)

                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 20)

                    
                }
                Spacer()
                
                Button(action: {
                    isNight.toggle()
                }, label: {
                    WeatherButton(title: "Change Day Time", textColor: .white, backgroundColor: .mint)
                })
                
                Spacer()
            }
        }
    }
}
    

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 20,weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 20,weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight : Bool
    
    var body: some View {
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct cityTextView: View {
    
    var cityName : String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct saas : View {
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("31°")
                .font(.system(size: 70,weight: .medium))
                .foregroundStyle(.white)
        }
        .padding()
    }
}

struct mainWeatherStatusView : View {
    
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundStyle(.white)
        }
        .padding()
    }
}



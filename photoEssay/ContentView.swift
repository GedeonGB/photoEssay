//
//  ContentView.swift
//  photoEssay
//
//  Created by Mac on 12/22/22.
//  Copyright © 2022 Mac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        ZStack {
           
           BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
        
            MainWeather (imageName: "cloud.sun.fill", temperature: 32)
                
                
                HStack(spacing : 20) {
                    WeatherDayView(dayOfTheWeek: "TUE", ImageName: "cloud.moon.rain.fill", Temp: 32)
                    WeatherDayView(dayOfTheWeek: "WED", ImageName: "cloud.rain.fill", Temp: 30)
                    WeatherDayView(dayOfTheWeek: "THU", ImageName: "cloud.rain.fill", Temp: 28)
                    WeatherDayView(dayOfTheWeek: "FRI", ImageName: "cloud.moon.rain.fill", Temp: 34)
                    WeatherDayView(dayOfTheWeek: "SAT", ImageName: "sun.max.fill", Temp: 35)
                        
                }
                
                Spacer()
               
                
//                Button {
//                    print("tapped")
//                } label: {
//                    Text("Change day time")
//                    .frame(width: 280, height: 50)
//                    .background(Color.white)
//                    .font(.system(size : 20, weight: .bold, design: .default))
//                    .cornerRadius(10)
//
//                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfTheWeek : String
    var ImageName : String
    var Temp : Int
    
    var body: some View {
        HStack {
            VStack {
                Text(dayOfTheWeek)
                    .font(.system(size : 16, weight : .medium))
                    .foregroundColor(.white)
                
                Image(systemName: ImageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width : 40, height: 40)
                
                Text("\(Temp)°")
                    .font(.system(size : 28, weight : .medium))
                    .foregroundColor(.white)
                
            }
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
           
    var body: some View {
        
       
        LinearGradient(gradient: Gradient(colors: [topColor,                            bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView : View {
    
    var cityname: String
    var body: some View {
        Text(cityname)
        .font(.system(size : 29, weight : .medium, design : .default))
        .foregroundColor(.white)
        .padding()
    }
}

struct MainWeather: View {
   
    var imageName : String
    var temperature: Int
    
    var body: some View {
                       
                       VStack(spacing : 8) {
                           Image(systemName: imageName)
                               .renderingMode(.original)
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width : 150, height: 150)
                           
                           Text("\(temperature)°")
                               .font(.system(size : 68, weight : .medium))
                               .foregroundColor(.white)
                       }
                       .padding(.bottom, 40)
    }
}

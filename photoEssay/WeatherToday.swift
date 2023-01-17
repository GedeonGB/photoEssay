//
//  WeatherToday.swift
//  photoEssay
//
//  Created by Mac on 1/17/23.
//  Copyright © 2023 Mac. All rights reserved.
//
import SwiftUI

struct WeatherToday: View {
   
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

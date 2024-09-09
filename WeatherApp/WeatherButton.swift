//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Oğuzhan Yavuz on 9.09.2024.
//

import SwiftUI

struct WeatherButton: View {
    
    var title : String
    var textColor : Color
    var backgroundColor : Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20,weight: .semibold))
            .cornerRadius(10)
    }
}


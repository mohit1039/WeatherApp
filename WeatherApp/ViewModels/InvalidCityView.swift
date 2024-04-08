//
//  InvalidCityView.swift
//  WeatherApp
//
//  Created by Mohitkumar Gupta on 07/04/24.
//

import SwiftUI

struct InvalidCityView: View {
    
    let city: String
    
    var body: some View {
        Text("\(city) is not found!")
    }
}

struct InvalidCityView_Previews: PreviewProvider {
    static var previews: some View {
        InvalidCityView(city: "ABCD")
    }
}

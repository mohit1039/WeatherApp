//
//  ContentView.swift
//  WeatherApp
//
//  Created by Mohitkumar Gupta on 07/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var weatherViewModel = WeatherViewModel()
    
    var body: some View {
        NavigationView(content: {
            VStack {
                TextField("City", text: $weatherViewModel.city) { (_) in
                } onCommit: {
                    weatherViewModel.fetchWeatherByCityName(city: weatherViewModel.city)
                }.textFieldStyle (RoundedBorderTextFieldStyle())
                Spacer()
                Spacer()
                
                switch weatherViewModel.loadingStatus {
                    case .success:
                    weatherViewModel.weatherInfoViewModel.map {
                        WeatherView(vm: $0)
                    }
                    case .notFound:
                    InvalidCityView(city: weatherViewModel.city)
                case .failure, .none:
                        EmptyView()
                }
            }
            .padding()
            .navigationTitle("Weather")
        })
        
        
    }
}

#Preview {
    ContentView()
}

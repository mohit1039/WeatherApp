//
//  Apollo.swift
//  WeatherApp
//
//  Created by Mohitkumar Gupta on 07/04/24.
//

import Foundation
import Apollo


class Network {
    static let shared = Network()
    
    private init() { }
    
    lazy var apollo = ApolloClient(url: URL(string: "http://localhost:4000/")!)
}

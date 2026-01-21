//
//  APIConfig.swift
//  BlossomMovie
//
//  Created by Stefan Alexandru Romila on 21.01.2026.
//

import Foundation

struct APIConfig: Decodable {
    let tmdbBaseURL: String
    let tmdbAPIKEY: String
    
    static let shared: APIConfig = {
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else {
            fatalError("APIConfig.json is missing or invalid")
        }
    }()
}

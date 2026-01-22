//
//  Errors.swift
//  BlossomMovie
//
//  Created by Stefan Alexandru Romila on 22.01.2026.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)
    
    var errorDescription: String? {
        switch self {
        case .fileNotFound:
            return "The file containing the API configuration was not found."
        case .dataLoadingFailed(underlyingError: let error):
            return "Failed to load data from API configuration file: \(error.localizedDescription)."
        case .decodingFailed(underlyingError: let underlyingError):
            return "Failed to decode the API configuration: \(underlyingError.localizedDescription)."
        }
    }
}

enum NetworkError: Error, LocalizedError {
    case badURLResponse(underlingError: Error)
    case missingConfig
    case urlBuildFailed
    
    var errorDescription: String? {
        switch self {
        case .badURLResponse(underlingError: let error):
            return "The URL session returned an invalid response: \(error.localizedDescription)."
        case .missingConfig:
            return "The API configuration is missing."
        case .urlBuildFailed:
            return "Failed to build the URL."
        }
    }
}

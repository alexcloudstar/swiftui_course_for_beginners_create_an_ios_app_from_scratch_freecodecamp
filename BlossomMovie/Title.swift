//
//  Title.swift
//  BlossomMovie
//
//  Created by Stefan Alexandru Romila on 21.01.2026.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
    
    static var previewTitles = [
        Title(id: 1, title: "BeetleJuice", name: "BeetleJuice", overview: "A movie about BeetleJuice", posterPath: Constants.testTitleURL),
        Title(id: 2, title: "Pulp Fiction", name: "Pulp Fiction", overview: "A movie about Pulp Fiction", posterPath: Constants.testTitleURL3),
        Title(id: 3, title: "The Dark Knight", name: "The Dark Knight", overview: "A movie about the Dark Knigt", posterPath: Constants.testTitleURL3)
    ]
}

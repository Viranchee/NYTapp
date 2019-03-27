//
//  Models.swift
//  heady
//
//  Created by Ketan Lotia on 26/03/19.
//  Copyright © 2019 Viranchee. All rights reserved.
//

import Foundation

struct NYT {
    static let topStoriesAPI = "kLeThCu1MndK5JLgxRZzeQx14wIZfJgI"
    static let appID = "c8387d98-8146-40e1-8466-151ed0fc95ea"
    static let appName = "HeadsAndTails"
    static let description = "Rate articles, top stories"
    static let urlScience = "https://api.nytimes.com/svc/topstories/v2/science.json?api-key=\(NYT.topStoriesAPI)"
    static let section: Sections = .home

    static func urlMaker(section: Sections = .home) -> URL {
        let string = "https://api.nytimes.com/svc/topstories/v2/\(section.rawValue).json?api-key=\(NYT.topStoriesAPI)"
        return URL(string: string)!
    }
}

enum Sections: String, CaseIterable {
    case arts, automobiles, books, business, fashion, food, health, home, insider, magazine, movies, national, nyregion, obituaries, opinion, politics, realestate, science, sports, sundayreview, technology, theater, tmagazine, travel, upshot, world
}

//
//  Team.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import Foundation

struct Team: Decodable, Identifiable  {
    let id = UUID()
    let name: String
    let market: String
}

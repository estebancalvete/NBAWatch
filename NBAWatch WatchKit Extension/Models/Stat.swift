//
//  Stat.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import Foundation

struct Stat: Decodable, Identifiable  {
    let id = UUID()
    let value: String
    let name: String
}

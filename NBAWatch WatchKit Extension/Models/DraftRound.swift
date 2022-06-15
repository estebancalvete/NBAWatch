//
//  DraftRound.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import Foundation

struct DraftRound: Decodable, Identifiable  {
    let id = UUID()
    let headline: String
    let subheadline: String
    let round: String
    let picks: [Pick]
}

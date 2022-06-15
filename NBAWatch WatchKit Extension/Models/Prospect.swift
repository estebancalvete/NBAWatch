//
//  Prospect.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import Foundation

struct Prospect: Decodable, Identifiable  {
    let id = UUID()
    let firstName: String
    let lastName: String
    let position: String
    let ht: Int
    let wt: Int
    let image: String
    let experience: String
    let birthPlace: String
    let analysis: String
    let round: Int
    let draftPosition: Int
    let school: String
    let team: Team
    let stats: [Stat]

    func height() -> String {
        let a = Measurement(value: Double(self.ht), unit: UnitLength.inches)
        if let ht = a.displayHeight {
            return ht
        }

        return "0' 0\""
    }

    func weight() -> String {
        return "\(self.wt) lbs"
    }
}

//
//  Pick.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import Foundation

struct Pick: Decodable, Identifiable  {
    let id = UUID()
    let prospect: Prospect
}

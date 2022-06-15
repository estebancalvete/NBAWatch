//
//  DraftService.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import Foundation

protocol DraftService {
    func fetchPicks() -> [Pick]
    func fetchPicks(by team: String) -> [Pick]
}

protocol DraftPreviewService {
    func currentPick() -> Pick
    func currentProspect() -> Prospect
}

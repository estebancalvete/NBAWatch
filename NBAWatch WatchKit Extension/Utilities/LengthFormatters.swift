//
//  LengthFormatters.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import Foundation

public struct LengthFormatters {
    public static let imperialLengthFormatter: LengthFormatter = {
        let formatter = LengthFormatter()
        formatter.isForPersonHeightUse = true
        formatter.unitStyle = .short

        return formatter
    }()
}

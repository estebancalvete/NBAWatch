//
//  DraftPlayerDetailStatsView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftPlayerDetailStatsView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { _  in
                HStack {
                    Spacer(minLength: 4)
                    VStack {
                        Text("PTS")
                            .custom(font: .bold, size: 12)
                            .offset(y: 1)
                        Text("99.9")
                            .custom(font: .ultralight, size: 18)
                    }
                    .background(Image("stat-bg-small"))
                    Spacer(minLength: 4)
                }
            }
        }
        .padding(.top, 10)
        .padding(.horizontal, 5)
    }
}

struct DraftPlayerDetailStatsView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailStatsView()
    }
}

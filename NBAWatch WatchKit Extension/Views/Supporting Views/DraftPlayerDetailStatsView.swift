//
//  DraftPlayerDetailStatsView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftPlayerDetailStatsView: View {
    let prospect: Prospect
    
    var body: some View {
        HStack {
            ForEach(prospect.stats) { stat in
                HStack {
                    Spacer(minLength: 4)
                    VStack {
                        Text(stat.name.uppercased())
                            .custom(font: .bold, size: 12)
                            .offset(y: 1)
                        Text(stat.value)
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
        DraftPlayerDetailStatsView(prospect: prospect)
    }
}

extension DraftPlayerDetailStatsView_Previews {
    static var prospect: Prospect {
        return MockDraftPreviewService.prospect
    }
}

//
//  DraftPlayerDetailView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftPlayerDetailView: View {
    let prospect: Prospect
    
    var body: some View {
        ScrollView {
            VStack {
                DraftPlayerDetailHeaderView(prospect: prospect)
                DraftPlayerDetailStatsView(prospect: prospect)
                DraftPlayerDetailInfoView(prospect: prospect)
            }
        }
    }
}

struct DraftPlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailView(prospect: prospect)
    }
}

extension DraftPlayerDetailView_Previews {
    static var prospect: Prospect {
        return MockDraftPreviewService.prospect
    }
}

//
//  DraftPlayerDetailView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftPlayerDetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                DraftPlayerDetailHeaderView()
                DraftPlayerDetailStatsView()
                DraftPlayerDetailInfoView()
            }
        }
    }
}

struct DraftPlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailView()
    }
}

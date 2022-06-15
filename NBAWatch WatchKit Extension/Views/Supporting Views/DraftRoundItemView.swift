//
//  DraftRoundItemView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftRoundItemView: View {
    let round: DraftRound
    
    var body: some View {
        NavigationLink(destination: DraftList(data: round)) {
            ZStack {
                Image("draft-menu-background").resizable()
                VStack(spacing: -15) {
                    Text(round.headline.uppercased())
                        .custom(font: .bold, size: 16)
                    Text(round.subheadline.uppercased())
                        .custom(font: .ultralight, size: 70)
                }
                .offset(x: -10, y: 10)
            }
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .listRowBackground(background)
    }
    var background: some View {
        Rectangle().fill(Color("CardBackground"))
    }
}

struct DraftRoundItemView_Previews: PreviewProvider {
    static var previews: some View {
        DraftRoundItemView(round: sampleRound)
    }
}


extension DraftRoundItemView_Previews {
    static var sampleRound: DraftRound {
        return MockDraftPreviewService.draftRound
    }
}

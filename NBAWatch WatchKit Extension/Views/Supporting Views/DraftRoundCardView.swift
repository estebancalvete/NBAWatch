//
//  DraftRoundCardView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftRoundCardView: View {
    @State private var currentIndex = 0.0
    @State private var isShowingDetail = false
    private let numberOfVisibleCards = 3
    let picks: [Pick]
    
    var body: some View {
        ZStack {
            ForEach((0..<picks.count).reversed(), id: \.self) { index in
                DraftCardView(prospect: self.picks[index].prospect)
                    .cardTransformed(self.currentIndex, card: index)
                    .onTapGesture {
                        self.isShowingDetail.toggle()
                    }
                    .sheet(isPresented: self.$isShowingDetail) {
                        DraftPlayerDetailView(prospect: self.picks[Int(self.currentIndex)].prospect)
                    }
            }
        }
        .focusable(true)
        .digitalCrownRotation(
            $currentIndex.animation(),
            from: 0.0,
            through: Double(picks.count - 1),
            by: 1.0,
            sensitivity: .low
        )
    }
}

struct DraftRoundCardView_Previews: PreviewProvider {
    static var previews: some View {
        DraftRoundCardView(picks: samplePicks)
    }
}


extension DraftRoundCardView_Previews {
    static var samplePicks: [Pick] {
        return MockDraftPreviewService.picks()
    }
}

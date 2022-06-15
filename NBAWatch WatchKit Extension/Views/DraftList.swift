//
//  DraftList.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftList: View {
    
    
    var body: some View {
        VStack(spacing: 10) {
            VStack(spacing: 0) {
                Text("ROUND 1")
                    .custom(font: .bold, size: 20)
                Divider()
                DraftRoundCardView()
            }
        }
        .navigationBarTitle(Text("By Round"))
    }
}

struct DraftList_Previews: PreviewProvider {
    static var previews: some View {
        DraftList()
    }
}



extension DraftList_Previews {
    
}

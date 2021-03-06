//
//  DraftPlayerDetailInfoView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftPlayerDetailInfoView: View {
    let prospect: Prospect
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("POSITION:")
                        .custom(font: .bold, size: 16)
                    Text(prospect.position)
                        .custom(font: .ultralight, size: 16)
                }
                Spacer()
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("SCHOOL:")
                        .custom(font: .bold, size: 16)
                    Text(prospect.school.uppercased()).custom(font: .ultralight, size: 16)
                }
                Spacer()
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("EXPERIENCE:")
                        .custom(font: .bold, size: 16)
                    Text(prospect.experience)
                        .custom(font: .ultralight, size: 16)
                }
                Spacer()
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("BIRTHPLACE:")
                        .custom(font: .bold, size: 16)
                    Text(prospect.birthPlace)
                        .custom(font: .ultralight, size: 16)
                }
                Spacer()
            }
            HStack {
                HStack(spacing: 5) {
                    Text("HT/WT:")
                        .custom(font: .bold, size: 16)
                    Text("\(prospect.height())/\(prospect.weight())")
                        .custom(font: .ultralight, size: 16)
                }
                Spacer()
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("ANALYSIS:")
                        .custom(font: .bold, size: 16)
                    Text(prospect.analysis)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .custom(font: .ultralight, size: 14)
                }
                Spacer()
            }
        }
        .padding(.top, 10)
        .padding(.horizontal, 5)
    }
}

struct DraftPlayerDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailInfoView(prospect: prospect)
    }
}

extension DraftPlayerDetailInfoView_Previews {
    static var prospect: Prospect {
        return MockDraftPreviewService.prospect
    }
}

//
//  DraftPlayerDetailHeaderView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct DraftPlayerDetailHeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(spacing: -35) {
                HStack(alignment: .top, spacing: 0) {
                    Text("1")
                        .custom(font: .ultralight, size: 19)
                        .offset(x: -2, y: 15)
                    Text(String(format: "%02d", 1))
                        .custom(font: .bold, size: 70)
                }
                .padding(.leading, 12)
                .offset(x: -45, y: -17)
                VStack(spacing: -1) {
                    HStack {
                        Image("pelicans").offset(x: 29)
                        Image("zion-williamson").offset(x: 0, y: -25)
                    }
                    .frame(height: 58)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color("pelicans"))
                    VStack(spacing: -5) {
                        Text("ZION")
                            .custom(font: .ultralight, size: 13)
                        Text("WILLIAMSON")
                            .custom(font: .bold, size: 20)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color.white)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct DraftPlayerDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailHeaderView()
    }
}

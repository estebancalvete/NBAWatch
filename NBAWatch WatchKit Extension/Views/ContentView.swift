//
//  ContentView.swift
//  NBAWatch WatchKit Extension
//
//  Created by Esteban Calvete Iglesias on 13/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(0..<2) { _ in
                NavigationLink(destination: DraftList()) {
                    ZStack {
                        Image("draft-menu-background").resizable()
                        VStack(spacing: -15) {
                            Text("ROUND")
                                .custom(font: .bold, size: 16)
                            Text("1")
                                .custom(font: .ultralight, size: 70)
                        }
                        .offset(x: -10, y: 10)
                    }
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowBackground(background)
            }
        }
        .listStyle(CarouselListStyle())
        .navigationBarTitle(Text("NBA Draft"))
    }
    var background: some View {
        Rectangle().fill(Color("CardBackground"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

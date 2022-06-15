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
                DraftRoundItemView()
            }
        }
        .listStyle(CarouselListStyle())
        .navigationBarTitle(Text("NBA Draft"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

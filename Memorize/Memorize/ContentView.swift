//
//  ContentView.swift
//  Memorize
//
//  Created by Sebastian Schoeler on 15.02.25.
//

import SwiftUI

/*
 - creating instances of structs
        Image(systemName: "globale")
 - named parameters
        systemName
 - parameter defaults
        other arguments you could use
 */

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFacedUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFacedUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFacedUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                                }
            
        }
    }
}

#Preview {
    ContentView()
}

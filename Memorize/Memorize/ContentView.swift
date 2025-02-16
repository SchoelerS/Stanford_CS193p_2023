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

// Views are immutable
struct CardView: View {
    // @State = temporary (pointer)
    @State var isFacedUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFacedUp {
                base.foregroundStyle(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
            
        }
        .onTapGesture {
            isFacedUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}

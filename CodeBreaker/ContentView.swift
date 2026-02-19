//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Khaleb Lisboa on 14/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            peg(colors: [.blue, .blue, .green, .yellow])
            peg(colors: [.red, .green, .red, .yellow])
            peg(colors: [.red, .yellow, .blue, .yellow])
        }.padding()
    }
    
    
    func peg(colors: Array<Color>) -> some View{
        HStack{
            ForEach(colors.indices, id: \.self){ index in
                RoundedRectangle(cornerRadius: 10).aspectRatio(1, contentMode: .fit).foregroundStyle(colors[index])
            }
            MatchMarkers(matches: [.exact, .inexact, .nomatch, .exact])
        }
    }
}



#Preview {
    ContentView()
}

//
//  ContentView.swift
//  CSE335Lab1
//
//  Created by lihe5 on 1/18/23.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                NavigationLink(destination: part1View()){
                    Text("Part I")
                        .font(
                            .largeTitle
                                .weight(.bold)
                        ).foregroundColor(.yellow)
                }.buttonStyle(PlainButtonStyle())
                Spacer()
                
                NavigationLink(destination: Part2View()){
                    Text("Part II")
                        .font(
                            .largeTitle
                                .weight(.bold)
                        ).foregroundColor(.orange)
                }.buttonStyle(PlainButtonStyle())
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


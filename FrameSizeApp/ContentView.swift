//
//  ContentView.swift
//  FrameSizeApp
//
//  Created by Bosco Domingo on 19/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Test text 1")
                .font(.headline)
                .padding()
                .debugFrameSize(color: .gray)
            Button("Pay Bill", action: { })
                .padding()
                .debugFrameSize(color: .blue)
            Text("Test text 2")
                .font(.largeTitle)
                .debugFrameSize(color: .purple)
            Rectangle()
                .foregroundColor(.yellow)
                .frame(width: 200, height: 100)
                .debugFrameSize(color: .black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

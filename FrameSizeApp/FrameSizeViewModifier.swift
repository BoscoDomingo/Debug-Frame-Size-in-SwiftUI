//
//  FrameSizeViewModifier.swift
//  FrameSizeApp
//
//  Created by Bosco Domingo on 19/04/21.
//

import SwiftUI

extension View {
    func debugFrameSize(color: Color = .red) -> some View {
        modifier(FrameSize(color: color))
    }
}

private struct FrameSize: ViewModifier {
    var color: Color

    func body(content: Content) -> some View {
        content
            .overlay(GeometryReader(content: overlay(for:)))
    }

    func overlay(for geometry: GeometryProxy) -> some View {
        ZStack(
            alignment: Alignment(horizontal: .trailing, vertical: .top)
        ) {
            Rectangle()
                .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5]))
                .foregroundColor(color)
            Text("\(Int(geometry.size.width))x\(Int(geometry.size.height))")
                .font(.footnote)
                .foregroundColor(color)
                .padding(2)
        }
    }
}

struct FrameSizeViewModifier_Previews: PreviewProvider {
    static var previews: some View {
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

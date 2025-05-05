//
//  ContentView.swift
//  HaloProgressBar
//
//  Created by durul dalkanat on 5/5/25.
//

import SwiftUI

struct ContentView: View {
    @State private var value: CGFloat = 70

    var body: some View {
        VStack(spacing: 40) {
            Text("OverlaysEmptyLine")
            HaloProgressBarView(
                value: value,
                progressColor: .blue, appearanceType: .overlaysEmptyLine
            )
            .frame(width: 120)

            Text("AboveEmptyLine")
            HaloProgressBarView(
                value: value,
                progressColor: .green, appearanceType: .aboveEmptyLine
            )
            .frame(width: 120)

            Text("UnderEmptyLine")
            HaloProgressBarView(
                value: value,
                progressColor: .red, appearanceType: .underEmptyLine
            )
            .frame(width: 120)

            Button("Update Chart") {
                withAnimation {
                    value = .random(in: 0...100)
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  HaloProgressBarView.swift
//  HaloProgressBar
//
//  Created by durul dalkanat on 5/5/25.
//

import SwiftUI

struct HaloProgressBarView: View {
    var value: CGFloat
    var maxValue: CGFloat = 100
    var lineWidth: CGFloat = 12
    var progressColor: Color = .blue
    var trackColor: Color = .gray.opacity(0.3)
    var showValue: Bool = true
    var font: Font = .system(size: 16, weight: .bold)
    var appearanceType: HaloProgressAppearanceType = .overlaysEmptyLine

    private var progressRatio: CGFloat {
        min(value / maxValue, 1.0)
    }

    var body: some View {
        ZStack {
            if appearanceType == .underEmptyLine {
                trackCircle
                progressCircle
            } else if appearanceType == .aboveEmptyLine {
                progressCircle
                trackCircle
            } else {
                // overlaysEmptyLine
                trackCircle
                progressCircle
            }

            if showValue {
                Text("\(Int(progressRatio * 100))%")
                    .font(font)
                    .foregroundColor(progressColor)
            }
        }
        .padding(lineWidth / 2)

        .aspectRatio(1, contentMode: .fit)
    }

    private var trackCircle: some View {
        Circle()
            .stroke(trackColor, lineWidth: lineWidth)
    }

    private var progressCircle: some View {
        Circle()
            .trim(from: 0.0, to: progressRatio)
            .stroke(progressColor,
                    style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
            .rotationEffect(.degrees(-90))
            .animation(.easeInOut(duration: 0.5), value: value)
    }
}

//
//  TimerCountDown.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/30/25.
//


import Foundation
import SwiftUI

struct TimerCountDownFormatStyle : FormatStyle {
    func format (_ value: Int) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: TimeInterval(value)) ?? ""
    }
}

extension FormatStyle where Self == TimerCountDownFormatStyle {
    static var timerCountdown : TimerCountDownFormatStyle { TimerCountDownFormatStyle()}
}


struct TimeFormatStyle : FormatStyle {
    func format (_ value: Int) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute]
        formatter.unitsStyle = .brief
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: TimeInterval(value)) ?? ""
    }
}

extension FormatStyle where Self == TimeFormatStyle {
    static var timeSelection : TimeFormatStyle { TimeFormatStyle()}
}

//
//  Injury.swift
//  DartInjuryPicker
//
//  Created by DOYLE, CAYLA M. on 4/15/26.
//

import SwiftUI

enum Injury: String, Identifiable, CaseIterable {
    case skullFracture = "Skull Fracture"
    case punctureWound = "Puncture Wound"
    case blindness = "Blindness"
    case laceration = "Laceration"
    case brainTrauma = "Brain Trauma"
    case death = "Death"
    
    var id: String {self.rawValue}
    
    var message: String {
        switch self {
        case .skullFracture: return "A dart hit your skull and is now fractured..."
        case .punctureWound: return "You've been punctured by a dart..."
        case .blindness: return "A dart hit your eye! You are blind..."
        case .laceration: return "You have a laceration..."
        case .brainTrauma: return "A dart hit your head too hard, and now you have brain trauma..."
        case .death: return "You are now one of the only few people to have died from a dart injury. Congrats!"
        }
    }
    
    var symbol: String{
        switch self{
        case .skullFracture: return "🤕"
        case .punctureWound: return "🩹"
        case .blindness: return "👁️"
        case .laceration: return "🩸"
        case .brainTrauma: return "🧠"
        case .death: return "💀"
        }
    }
    
    
}

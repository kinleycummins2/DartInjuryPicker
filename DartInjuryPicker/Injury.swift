//
//  Injury.swift
//  DartInjuryPicker
//
//  Created by DOYLE, CAYLA M. on 4/15/26.
//

import SwiftUI

enum Injury: String, Identifiable, CaseIterable {
    case skullFracture, punctureWound, blindness, laceration, brainTrauma, death
    
    var id: String {self.rawValue}
    
    var message: String {
        
        switch self {
        case .skullFracture: return "Skull Fracture"
        case .punctureWound: return "Puncture Wound"
        case .blindness: return "Blindness"
        case .laceration: return "Laceration"
        case .brainTrauma: return "Brain Trauma"
        case .death: return "Death"
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

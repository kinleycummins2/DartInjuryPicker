//
//  PickerView.swift
//  DartInjuryPicker
//
//  Created by BLAYLOCK, EMMA on 4/15/26.
//

import SwiftUI

struct PickerView: View {
    @Binding var injury: Injury
    @Environment(\.dismiss) var dismiss
        var body: some View {
            List(Injury.allCases) { injuryOption in
                Button {
                    injury = injuryOption
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: injuryOption.symbol)
                            .font(.largeTitle)
                        Text(injuryOption.rawValue.capitalized) {
                            .font(.headline)
                            .padding(.leading)
                        }
                    }
                }
            }
            .navigationTitle("Pick Your Injury")
        }
}

#Preview {
    NavigationStack {
        PickerView(injury: .constant(.skullFracture))
    }
}

//
//  AboutView.swift
//  DartInjuryPicker
//
//  Created by BLAYLOCK, EMMA on 4/15/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Image(systemName: "cross.fill")
                    .foregroundStyle(.red)
                Text("An app to tell us about your injury from lawn darts.")
                Divider()
                Text("Created by Cayla, Emma, and Kinley")
                    .font(.subheadline)
                Divider()
                Text("In the case that you have suffered an injury from lawn darts, make sure to point it out to us so we can help you target the right treatment.")
                    .padding()
            }
        }
        .navigationTitle("About")
    }
}

#Preview {
    AboutView()
}

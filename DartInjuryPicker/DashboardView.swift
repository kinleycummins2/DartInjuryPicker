//
//  ContentView.swift
//  DartInjuryPicker
//
//  Created by CUMMINS, KINLEY on 4/15/26.
//

import SwiftUI

struct DashboardView: View {
    @State private var selectedInjury: Injury = .skullFracture
    var body: some View {
        TabView{
            NavigationStack {
                Image(.lawndartsfun)
                    .resizable()
                    .frame(width: 200, height: 180)
                VStack(spacing: 24) {
                    Text("Played a game of lawn darts recently?")
                        .font(.title2)
                    Text("Your Injury:")
                        .font(.title2)
                    Text(selectedInjury.symbol)
                        .font(.system(size:80))
                    Text(selectedInjury.message)
                        .font(.headline)
                        .foregroundColor(.gray)
                        
                    
                    NavigationLink("Pick Your Injury") {
                        PickerView(injury: $selectedInjury)
                    }
                    .buttonStyle(.borderedProminent)
                    
                }
                .padding()
                .navigationTitle("Dashboard")
            }.tabItem{
                Label("Home", systemImage: "house")
            }
            AboutView()
                .tabItem{
                    Label("About", systemImage: "info.circle")
                }
        }
    }
}

#Preview {
    DashboardView()
}

//
//  AppView.swift
//  AvocadoApp
//
//  Created by Oleh on 19.11.2024.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .accentColor(Color.primary)
    }
}

#Preview {
    AppView()
}

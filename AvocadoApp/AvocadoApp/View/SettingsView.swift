//
//  SettingsView.swift
//  AvocadoApp
//
//  Created by Oleh on 19.11.2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: PROPERTIES
    @State private var enableNotifications: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable notification")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                
                Section(header: Text("Application")) {
                    if enableNotifications {
                        HStack {
                            Text("Product")
                                .foregroundStyle(Color.gray)
                            
                            Spacer()
                            
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundStyle(Color.gray)
                            
                            Spacer()
                            
                            Text("iPhone and iPad")
                        }
                        
                        HStack {
                            Text("Developer")
                                .foregroundStyle(Color.gray)
                            
                            Spacer()
                            
                            Text("Oleh Didushok")
                        }
                        
                        HStack {
                            Text("Designed by")
                                .foregroundStyle(Color.gray)
                            
                            Spacer()
                            
                            Text("Robert Petras")
                        }
                        
                        HStack {
                            Text("Website")
                                .foregroundStyle(Color.gray)
                            
                            Spacer()
                            
                            Text("https://github.com/OlehDidushok?tab=repositories")
                        }
                        
                        HStack {
                            Text("Version")
                                .foregroundStyle(Color.gray)
                            
                            Spacer()
                            
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundStyle(Color.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                    
                    
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}

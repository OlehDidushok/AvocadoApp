//
//  RecipeCardView.swift
//  AvocadoApp
//
//  Created by Oleh on 19.11.2024.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: PROPERTIES
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundStyle(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            
                            Spacer()
                        }
                    }
                }
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif, weight: nil))
                    .foregroundStyle(Color.gray)
                    .italic()
                
                RecipeRatingView(recipe: recipe)
                
                RecipeCookingView(recipe: recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
            
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[0])
}

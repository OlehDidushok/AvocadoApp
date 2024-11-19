//
//  FactsView.swift
//  AvocadoApp
//
//  Created by Oleh on 19.11.2024.
//

import SwiftUI

struct FactsView: View {
    var body: some View {
        Text("The size of an avocado does not indicate the fruit quality or stage of ripeness. Avocado’s seed actually grows with the fruit, so the seed-to-fruit ratio will always be close to the same.")
            .padding(.leading, 55)
            .padding(.trailing, 10)
            .padding(.vertical, 3)
            .frame(width: 300, height: 135, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),
                                                           Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundStyle(.white)
        
        Image("avocado-fact-2")
            .resizable()
            .frame(width: 66, height: 66, alignment: .center)
            .clipShape(Circle())
            .background(
                Circle()
                    .fill(Color.white)
                    .frame(width: 74, height: 74, alignment: .center)
            )
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82, height: 82, alignment: .center)
            )
            .background(
                Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 90, height: 90, alignment: .center)
            )
            .offset(x: -150, y: -110)
    }
}

#Preview {
    FactsView()
}

//
//  CountryRowView.swift
//  Countries
//
//  Created by Gustavo Anjos on 01/02/21.
//

import SwiftUI

struct CountryRowView: View {
    // MARK: - PROPERTIES
    var country: Country
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack{
            Image(country.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black, radius: 3, x: 2, y: 2)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(country.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(country.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }//: VSTACK
        }//: HSTACK

    }
}

struct CountryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryRowView(country: countriesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

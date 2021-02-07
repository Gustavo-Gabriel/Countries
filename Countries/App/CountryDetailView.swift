//
//  CountryDetailView.swift
//  Countries
//
//  Created by Gustavo Anjos on 01/02/21.
//

import SwiftUI

struct CountryDetailView: View {
    
    // MARK: - PROPERTIES
    var country: Country
    
    // MARK: - BODY
    
    var body: some View {
        
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    
                    // HEADER
                    CountryHeaderView(country: country)
                    
                    VStack(alignment: .leading, spacing: 20){
                        
                        // TITLE
                        Text(country.title)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("ColorBlueberryDark"))
                        
                        // HEADLINE
                        Text(country.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        // INFO
                        CountryInfoView(country: country)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(country.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color("ColorBlueberryDark"))
                        
                        // DESCRIPTION
                        Text(country.description)
                        
                        // LINK
                        SourceLinkView(country: country)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
            }//: SCROLL
        .navigationBarTitle(country.title, displayMode: .inline)
    }
}

// MARK: - PREVIEW

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: countriesData[0])
    }
}

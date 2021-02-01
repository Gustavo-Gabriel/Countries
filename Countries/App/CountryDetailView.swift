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
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    
                    // HEADER
                    CountryHeaderView(country: country)
                    
                    VStack(alignment: .leading, spacing: 20){
                        
                        // TITLE
                        Text(country.title)
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        // HEADLINE
                        Text(country.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(country.title)".uppercased())
                            .fontWeight(.bold)
                        
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarTitle(country.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
    }
}

// MARK: - PREVIEW

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: countriesData[0])
    }
}

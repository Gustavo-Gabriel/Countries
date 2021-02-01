//
//  ContentView.swift
//  Countries
//
//  Created by Gustavo Anjos on 01/02/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    var countries: [Country] = countriesData
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(countries){ country in
                    NavigationLink(destination: CountryDetailView(country: country)){
                        CountryRowView(country: country)
                            .padding(.vertical, 4)
                    }
                }
            }//: LIST
            .navigationTitle("Countries")
        }//: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(countries: countriesData)
    }
}

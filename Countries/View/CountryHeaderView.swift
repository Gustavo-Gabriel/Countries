//
//  CountryHeaderView.swift
//  Countries
//
//  Created by Gustavo Anjos on 01/02/21.
//

import SwiftUI

struct CountryHeaderView: View {
    
    // MARK: - PROPERTIES
    var country: Country
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        ZStack{
            Image(country.image)
                .resizable()
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//: ZSTACK
        .frame(height: 300)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
        
    }
}

// MARK: - PREVIEw

struct CountryHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CountryHeaderView(country: countriesData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}

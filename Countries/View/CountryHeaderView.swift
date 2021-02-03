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
                .contrast(0.6)
                .overlay(
                    VStack{
                        
                        Spacer()
                        
                        HStack{
                            Image(country.flagImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 90, alignment: .center)
                                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
                                .padding()
                            
                            VStack(alignment: .leading){
                                Text(country.title)
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .bold()
                                
                                Text(country.capital)
                                    .foregroundColor(.white)
                                    .font(.footnote)
                            }
                            
                            Spacer()
                        }
                    }
                )
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
        CountryHeaderView(country: countriesData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}

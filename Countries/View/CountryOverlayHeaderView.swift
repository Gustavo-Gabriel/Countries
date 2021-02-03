//
//  CountryOverlayHeaderView.swift
//  Countries
//
//  Created by Gustavo Anjos on 03/02/21.
//

import SwiftUI

struct CountryOverlayHeaderView: View {
    
    //MARK: - PROPERTIES
    var country: Country
    
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
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
                        .padding(.bottom, 0.5)
                    
                    Text(country.capital)
                        .foregroundColor(.white)
                        .font(.callout)
                        
                }
                
                Spacer()
            }
        }.onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

//MARK: - PREVIEW

struct CountryOverlayHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CountryOverlayHeaderView(country: countriesData[0])
    }
}

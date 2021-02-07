//
//  CountryInfoView.swift
//  Countries
//
//  Created by Gustavo Anjos on 07/02/21.
//

import SwiftUI

struct CountryInfoView: View {
    
    // MARK: - PROPERTIES
    var country: Country
    let info: [String] = ["Capital", "Extensão Territorial", "Clima", "População", "Densidade Demográfica", "Idioma", "Religião", "Moeda", "IDH", "Total do PIB", "Expectativa de Vida"]
    // MARK: - BODY
    
    var body: some View {
        
        GroupBox(){
            DisclosureGroup("Informacões do País"){
                ForEach(0..<info.count, id: \.self){ item in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(info[item])
                        }//: Group
                        .foregroundColor(Color("ColorBlueberryDark"))
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(country.info[item])
                            .multilineTextAlignment(.trailing)
                    } //: HSTACK
                }
            }
        } //: BOX
    }
}

// MARK: - PREVIEW

struct CountryInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CountryInfoView(country: countriesData[0])
    }
}

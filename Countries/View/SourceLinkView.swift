//
//  SourceLinkView.swift
//  Countries
//
//  Created by Gustavo Anjos on 04/02/21.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: - PROPERTIES
    var country: Country
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                
                Link("Wikepedia", destination: URL(string: "https://pt.m.wikipedia.org/wiki")!)
                
                Image(systemName: "arrow.up.right.square")
            }//: HSTACK
            .font(.footnote)
        }//: GROUP
        .padding()
    }
}

// MARK: - PREVIEW

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(country: countriesData[1])
    }
}

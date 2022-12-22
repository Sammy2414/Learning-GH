//
//  Card.swift
//  Quotes
//
//  Created by Sammy Orozco on 12/21/22.
//

import SwiftUI

struct Card: View {
    
    var author:Author
    
    var body: some View {
       
        ZStack {
            
            // Background Image
            Image(author.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(50)

            
            // Text Stack
            VStack(alignment: .leading, spacing: 10.0) {
                
                // Quote if there is at least 1
                if author.quotes.count > 0 {
                    Text(author.quotes[0])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .frame(width: 350.0, height: 200.0)
                        .scaledToFit()
                }
                
                // Name
                Text("- " + author.name)
        
            }
            .padding(.all, 20.0)
            .shadow(color: .black, radius: 10, x: 2, y: 2)
            
        }
        .foregroundColor(Color.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(50)
        .padding([.leading, .trailing])
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        
        
        let model = AuthorModel()
        
        Card(author: model.authors[0])
    }
}

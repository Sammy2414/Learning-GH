//
//  AuthorDetailedView.swift
//  Quotes
//
//  Created by Sammy Orozco on 12/21/22.
//

import SwiftUI

struct AuthorDetailedView: View {
    
    var author:Author
    
    var body: some View {
        
        
        ScrollView {
            
            
            //MARK: Author Image
            Image(author.image)
                .resizable()
                .scaledToFit()
            
            
            //MARK: Author Quotes
            
            VStack()
            {
                
                
                Text(author.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 5.0)
                
                
                
                VStack() {
                    ForEach(author.quotes, id: \.self) { q in
                     
                        Text(q)
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 15.0)
                        
                       Divider()
                        
                        
                    }
                }
                .padding(.horizontal, 1.0)
                    
                
                
            }
            
            
            
            
            
        }
            
        
    }
}

struct AuthorDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        let model = AuthorModel()
        
        
        AuthorDetailedView(author: model.authors[0])
    }
}

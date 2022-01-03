//
//  BusinessRow.swift
//  City Sights App
//
//  Created by G. Michael Fortin Jr on 1/3/22.
//

import SwiftUI

struct BusinessRow: View {
    
    @ObservedObject var business: Business
    
    var body: some View {
        
        VStack(alignment:.leading){
            HStack{
                // Image
                let uiImage = UIImage(data: business.imageData ?? Data())
                Image(uiImage: uiImage ?? UIImage())
                    .resizable()
                    .scaledToFill()
                    .frame(width:58,height:58)
                    .cornerRadius(5)
                
                // Name and distance
                VStack(alignment:.leading){
                    Text(business.name ?? "")
                        .bold()
                    Text(String(format: "%.1f mi away", (business.distance ?? 0)/1000*0.621371))
                        .font(.caption)
                }
                
                Spacer()
                
                // Star rating and number of reviews
                VStack(alignment:.leading){
                    Image("regular_\(business.rating ?? 0.0)")
                    Text("\(business.reviewCount ?? 0) Reviews")
                        .font(.caption)
                }
            }
        }
        
        Divider()
        
    }
}

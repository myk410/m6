//
//  HomeView.swift
//  City Sights App
//
//  Created by G. Michael Fortin Jr on 1/3/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    @State var isMapShowing = false
    
    var body: some View {
        
        if model.restaurants.count != 0 || model.sights.count != 0{
            
            NavigationView{
                
                // Determine if we should show list or map
                if !isMapShowing {
                    // Show list
                    VStack{
                        HStack{
                            Image(systemName: "location")
                            Text("Wakefield")
                            Spacer()
                            
                            Button("Switch to map view"){
                                self.isMapShowing = true
                            }

                            
                        }
                        
                        Divider()
                        
                        BusinessList()
                    }
                    .navigationBarHidden(true)
                    .padding([.horizontal,.top])
                }
                else{
                    // Show map
                    BusinessMap()
                        .ignoresSafeArea()
                }
                
            }
        }
        else{
            // Still waiting for data so show spinner
            ProgressView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

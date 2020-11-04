//
//  ContentView.swift
//  Country
//
//  Created by Julieth Angel on 11/3/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                CoverImageView().frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Julieth Angel on 10/25/20.
//

import SwiftUI



struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) {item in
                FruitCardView(fruit: item)
            }
        }.tabViewStyle(PageTabViewStyle()).padding(.vertical,20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
     
    }
}

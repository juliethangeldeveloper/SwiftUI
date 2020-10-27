//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Julieth Angel on 10/27/20.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        Text(fruit.title)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}

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
        NavigationView{
            ScrollView(.vertical){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    //header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        //title
                        Text(fruit.title).font(.largeTitle).fontWeight(.heavy).foregroundColor(fruit.gradientColors[1])
                        //headline
                        Text(fruit.headline).font(.headline).multilineTextAlignment(.leading)
                        //nutrients
                        FruitNutrientsView(fruit: fruit)
                        //subhedline
                        Text("Learn More about \(fruit.title)".uppercased()).fontWeight(.bold).foregroundColor(fruit.gradientColors[1])
                        //description
                        Text(fruit.description).multilineTextAlignment(.leading)
                        //link
                        SourceLinkView().padding(.top, 10).padding(.bottom, 40)

                    }.padding(.horizontal,20).frame(maxWidth:640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}

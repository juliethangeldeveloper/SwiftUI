//
//  FruitsApp.swift
//  Fruits
//
//  Created by Julieth Angel on 10/25/20.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            } else{
                ContentView()
            }
        }
    }
}


struct FruitsApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

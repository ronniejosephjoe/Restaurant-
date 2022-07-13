//
//  MotherView.swift
//  Ecommerce
//
//  Created by RJ on 13/07/22.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var use: variables
    
    @State var LaunchDone = false
    
    var body: some View {
        
        ZStack{
            
            if LaunchDone{
                
            
            if use.ViewCard == true{
                ContentView()
                Color.black.opacity(0.2).edgesIgnoringSafeArea(.all).onTapGesture{
                    use.ViewCard = false
                }
                withAnimation{
                
            Customer_Card().transition(.move(edge: .bottom))
                }
            }else if use.CardDone{
                
            MenuView()
                
            }else{
                ContentView()
            }
            }else{
                LaunchScreen()
            }
            
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5
            ) {
                withAnimation{

                    use.scaleffect.toggle()
                    LaunchDone = true
                }
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(variables())
    }
}

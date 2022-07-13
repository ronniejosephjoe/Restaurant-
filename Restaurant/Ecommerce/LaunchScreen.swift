//
//  LaunchScreen.swift
//  Ecommerce
//
//  Created by RJ on 13/07/22.
//

import SwiftUI

struct LaunchScreen: View {
    
    
    @EnvironmentObject var use:variables
   

  
    var body: some View {
        
        VStack{
            Spacer()
               
            LinearGradient(gradient: Gradient(colors: [.blue,.indigo,.purple,.red,] ), startPoint: .bottomLeading, endPoint: .trailing).frame(width: 300, height: 250)
                .mask( Text("Restaurant ").font(.system(size: 60)).bold())

                .scaleEffect(use.scaleffect ? 70 : 1)
            Spacer()
            Text("FROM").foregroundColor(.gray)
            Text("Joe's Team").bold().foregroundColor(.gray)
                                
        }
           
          
        
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen().environmentObject(variables())
            .preferredColorScheme(.light)
            
    }
}

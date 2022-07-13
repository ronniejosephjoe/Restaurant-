//
//  Customer Card.swift
//  Ecommerce
//
//  Created by RJ on 13/07/22.
//

import SwiftUI

struct Customer_Card: View {
    @EnvironmentObject var use:variables
    var body: some View {
        VStack{
        ZStack{
            
            
            
            Rectangle().frame(width:  UIScreen.main.bounds.width - 10, height: 300).cornerRadius(30).foregroundColor(.white)
            
            
            
            VStack(spacing: 30){
                
                Text("Customer Card").font(.system(size: 30)).bold()
                
                TextField("Name",text: $use.CustomerName).frame(width: 200)
            
            TextField("Phone",text: $use.Phone).frame(width: 200)
                
                Button(action:{
                    use.ViewCard = false
                    
                    withAnimation{
                    use.CardDone = true
                    }
                }){
                ZStack{
                    Rectangle().frame(width: 70, height: 40).cornerRadius(30).foregroundColor(.blue)
                    
                    Text("Done").bold().foregroundColor(.white)
                    
                }
                
            }
            }
        }.offset(y: 250)
        }
    }
}

struct Customer_Card_Previews: PreviewProvider {
    static var previews: some View {
        Customer_Card().environmentObject(variables())
    }
}

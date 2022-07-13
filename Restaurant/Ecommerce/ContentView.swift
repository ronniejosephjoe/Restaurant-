//
//  ContentView.swift
//  Ecommerce
//
//  Created by RJ on 13/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var use:variables
    
    var body: some View {
        NavigationView{
            VStack{
            HStack(spacing: 20){
                
                VStack(spacing: 20){
                   
                ForEach(1..<4){i in
                    
                    ZStack{
                        Rectangle().frame(width: 150, height: 150).cornerRadius(20).foregroundColor(.white).shadow(color: .black.opacity(0.2), radius: 4, x: 5, y: 5)
                       
                        Text("Table \(i)").bold()
                        
                    }.onTapGesture{
                        withAnimation{
                        use.ViewCard = true
                        }
                    }
                    
                 }
                }
                
                    VStack(spacing: 20){
                    
                    ForEach(4..<7){i in
                        
                        ZStack{
                            Rectangle().frame(width: 150, height: 150).cornerRadius(20).foregroundColor(.white).shadow(color: .black.opacity(0.2), radius: 4, x: 5, y: 5)
                            Text("Table \(i)").bold()
                            
                        }.onTapGesture{
                            withAnimation{
                            use.ViewCard = true
                            }
                        }
                        
                    }
                }
                    
                
            }
            }.navigationTitle("Restaurant")
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  MenuView.swift
//  Ecommerce
//
//  Created by RJ on 13/07/22.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var use: variables
    
    @State var Food = true
    @State var SoftDrinks = false
    @State var FastFood = false
    
    var body: some View {
        
       
        
        NavigationView{
        VStack{
            
          
           
                ZStack{
                    Rectangle().frame(width: 320, height: 60).cornerRadius(30).foregroundColor(.gray)
                    
                    HStack(spacing: 30){
                        
                       
                        Text("Food").onTapGesture{
                            
                            withAnimation{
                                
                                FastFood = false
                                SoftDrinks = false
                                Food = true
                                
                            }
                            
                        }
                        
                      
                        Text("Drinks").onTapGesture {
                            
                            withAnimation{
                                
                                FastFood = false
                                SoftDrinks = true
                                Food = false
                                
                            }
                            
                        }
                        
                        Text("Fast Foods").onTapGesture{
                            
                            withAnimation{
                                
                                FastFood = true
                                SoftDrinks = false
                                Food = false
                                
                            }
                            
                        }
                       
                    }
                     if Food{
                        Rectangle().frame(width: 80 , height: 40).foregroundColor(.black).opacity(0.2).cornerRadius(30).offset(x: -100)
                    }
                    
                    if SoftDrinks{
                        Rectangle().frame(width: 100 , height: 40).cornerRadius(30).foregroundColor(.black).opacity(0.2).cornerRadius(30).offset(x: -20)
                    }
                    if FastFood{
                        Rectangle().frame(width: 120 , height: 40).cornerRadius(30).foregroundColor(.black).opacity(0.2).cornerRadius(30).offset(x: 75)
                    }
                }.offset(y: SoftDrinks ? -110 : -30)
            
            
            
            if Food{
               
                HStack{
                    VStack{
                    ForEach(0..<3){ i in
                       
                            ZStack{
                                Rectangle().frame(width: 150, height: 150).foregroundColor(.white).cornerRadius(20).shadow(color: .black.opacity(0.2), radius: 4, x: 5, y: 5)
                                
                                Image(use.FoodImgs[i]).resizable().frame(width: 150, height: 150).cornerRadius(20)
                            }
                        
                        Text(use.FoodImgs[i]).bold()
                        }
                    }
                    
//                    VStack{
//                    ForEach(3..<6){ i in
//
//                            ZStack{
//                                Rectangle().frame(width: 150, height: 150).foregroundColor(.white).cornerRadius(20).shadow(color: .black.opacity(0.2), radius: 4, x: 5, y: 5)
//
//                                Image(use.FastFoodImgs[i]).resizable().frame(width: 150, height: 150).cornerRadius(20)
//                            }
//                        Text(use.FastFoodImgs[i]).bold()
//                        }
//                    }
                }
            }
            
            if SoftDrinks{
                
                HStack{
                    VStack{
                    ForEach(0..<2){ i in
                       
                            ZStack{
                                Rectangle().frame(width: 150, height: 150).foregroundColor(.white).cornerRadius(20).shadow(color: .black.opacity(0.2), radius: 4, x: 5, y: 5)
                                
                                Image(use.SoftDrinksImgs[i]).resizable().frame(width: 150, height: 150).cornerRadius(20)
                            }
                        
                        Text(use.SoftDrinksImgs[i]).bold()
                        }
                    }
                    
                    VStack{
                    ForEach(2..<4){ i in
                       
                            ZStack{
                                Rectangle().frame(width: 150, height: 150).foregroundColor(.white).cornerRadius(20).shadow(color: .black.opacity(0.2), radius: 4, x: 5, y: 5)
                                
                                Image(use.SoftDrinksImgs[i]).resizable().frame(width: 150, height: 150).cornerRadius(20)
                            }
                        Text(use.SoftDrinksImgs[i]).bold()
                        }
                    }
                }
            }
            
            if FastFood{
                HStack{
                    VStack{
                    ForEach(0..<3){ i in
                       
                            ZStack{
                                Rectangle().frame(width: 150, height: 150).foregroundColor(.white).cornerRadius(20).shadow(color: .black.opacity(0.2), radius: 4, x: 5, y: 5)
                                
                                Image(use.FastFoodImgs[i]).resizable().frame(width: 150, height: 150).cornerRadius(20)
                            }
                        
                        Text(use.FastFoodImgs[i]).bold()
                        }
                    }
                    
                    VStack{
                    ForEach(3..<6){ i in
                       
                            ZStack{
                                Rectangle().frame(width: 150, height: 150).foregroundColor(.white).cornerRadius(20).shadow(color: .black.opacity(0.2), radius: 4, x: 5, y: 5)
                                
                                Image(use.FastFoodImgs[i]).resizable().frame(width: 150, height: 150).cornerRadius(20)
                            }
                        Text(use.FastFoodImgs[i]).bold()
                        }
                    }
                }
            }
            
        }.navigationTitle("Menu")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView().environmentObject(variables())
    }
}

//
//  Variables.swift
//  Ecommerce
//
//  Created by RJ on 13/07/22.
//

import SwiftUI


class variables: ObservableObject{
    
    @Published var scaleffect = false
    @Published var opacity = 0.6
    
    @Published var ViewCard = false
    @Published var CardDone = false
    
    
    @Published var CustomerName = ""
    @Published var Phone = ""
    
    @Published var names = []
    
    @Published var FoodCount = ["0","0","0","0","0","0"]
    @Published var DrinksCount = ["0","0","0","0","0","0"]
    @Published var FastCount = ["0","0","0","0","0","0"]
    
    @Published var FoodImgs = ["Meals","Biryani","Paratta"]
    @Published var FastFoodImgs = ["Cheese Sandwich","Chicken Burger","French Fries","Hotdog","Momo","Noodles"]
    @Published var SoftDrinksImgs = ["Lemon Soda","Strawberry Milkshake","White Cadbury Milkshake","Choclate Milkshake"]
    
    func feedback(type: UINotificationFeedbackGenerator.FeedbackType){
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
}

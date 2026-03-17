//
//  FoodItems.swift
//  newProjectTest
//
//  Created by Ashley Morales on 3/17/26.
//


import Foundation
class FoodItems {
    
    var breakfast = [
        "Bacon, Egg and Cheese Sandwich","Scrambled Eggs and Ham",
        "Bagel w/Cream Chesse","Bacon & Hash Browns",
        "Buttermilk Pancakes","Homemade Waffles",
        "Western Omelet","Oatmeal",
        "French Toast","Sausage, Egg and Cheese Sandwich",
        "Avocado Toast", "Strawberry-Banana Smoothie",
        "Ham, Egg and Cheese Crossiant"]
     var lunch = [
        "Turkey Club","Grilled Cheese",
        "Chicken Quesadilla","Bacon Cheese Burger",
        "Chicken Tenders and Fries","Pizza",
        "Cuban Sandwich","Mozzarella Sticks",
        "Chicken Ceasar Salad","Tacos",
        "Sushi", "Garden salad",
        "Tomato soup"]
     var dinner = [
        "Chicken Parmesan","Spaghetti & Meatballs",
        "Chicken Potpie","Chicken and Rice Burrito Bowl",
        "Rigatoni Bolognese","Garlic Butter Steak",
        "Meat Stuffed Lasagna","Seafood Pasta",
        "Sloppy Joe","Fish Tacos",
        "Roast beef", "Meat Loaf",
        "Vegetable Soup", "Grilled Chicken and House Salad"]

     func getItem(category: Int) -> String {
        var randomNum: Int
        if category == 1
        {
            randomNum = Int.random(in: 0...(breakfast.count)-1)
            return breakfast[randomNum]
        }
        else if category == 2
        {
            randomNum = Int.random(in: 0...(lunch.count)-1)
            return lunch[randomNum]
        }
        else if category == 3
        {
            randomNum = Int.random(in: 0...(dinner.count)-1)
            return dinner[randomNum]
        }
        else
        {
            return "No cateogry available"
        }
    }
}

//print("Pick an available option: \n1.Random breakfast idea \n2.Random lunch idea \n3.Random dinner idea \n\nYou choose ")
//
//let number = Int(readLine(strippingNewline: true)!)!
//var randomNum = Int.random(in: 0...9)
//var food = FoodItems()
//
//if number == 1
//{
//    print("For breakfast, you should have...")
//}
//else if number == 2
//{
//    print("For lunch, you should have...")
//}
//else if number == 3
//{
//    print("For dinner, you should have...")
//}
//else
//{
//    print("Food category not available")
//}
//
//print(food.getItem(category: number, random: randomNum), "!")


//
//  ContentView.swift
//  newProjectTest
//
//  Created by Ashley Morales on 3/17/26.
//

//
//  ContentView.swift
//  FoodHutApp
//
//  Created by Ashley Morales on 7/15/21.
//  Copyright © 2021 Ashley Morales. All rights reserved.
//

import SwiftUI

var randomNum: Int = 100
var food = FoodItems()
var number: Int = 0

struct ContentView: View {
    @State var item: String = ""
    //@State var emoji = "😀"
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all) //screen color
            VStack(){
                Spacer()
                    .frame(height: 20)
                Text("Welcome to FoodHut!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                Spacer()
                    .frame(height: 10)
                Text("Hungry but not sure what to eat? \nChoose a food category below and I'll pick for you!")
                    .multilineTextAlignment(.center)
                .padding(.bottom)
                
                Button(action: {
                    number = 1
                    self.item = "Good morning! \nFor breakfast, you should have...\n\n" + food.getItem(category: number)
                    //self.emoji = "😋"
                }) {
                    Text("Breakfast")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(40)
                }
                .padding(.bottom)
                
                Button(action: {
                    number = 2
                    self.item = "Good afternoon! \nFor lunch, you should have...\n\n" + food.getItem(category: number)
                    //self.emoji = "🔥"
                }) {
                    Text("Lunch")
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(Color.white)
                    .cornerRadius(40)
                }
                .padding(.bottom)
                
                Button(action: {
                    number = 3
                    self.item = "Good evening! \nFor dinner, you should have...\n\n" + food.getItem(category: number)
                    //self.emoji = ""
                }) {
                    Text("Dinner")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(40)
                }
         
                Spacer()
                    .frame(height: 40)
                Text(item)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 18))
                //Text(emoji)
                    //.font(.system(size: 36))
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


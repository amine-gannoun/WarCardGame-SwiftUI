//
//  ContentView.swift
//  WarCardGame
//
//  Created by Amine on 09/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numCard1 = 1
    @State private var numCard2 = 1
    @State private var score1 = 0
    @State private var score2 = 0
    
    var body: some View {
        
        ZStack{
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Image("card"+String(numCard1))
                    Image("card"+String(numCard2))
                }.scaleEffect(1.2)
                Spacer()
                Button(action: {
                    // To Do
                    numCard1 = Int.random(in: 2...14)
                    numCard2 = Int.random(in: 2...14)
                    
                    if numCard1 > numCard2 {
                        score1 += 1
                    }else if numCard1 < numCard2 {
                        score2 += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                }).scaleEffect(1.2)
                Spacer()
                HStack{
                    VStack{
                        Text("Player")
                            .bold()
                            .padding(.bottom, 10)
                        Text(String(score1))
                            .bold()
                    }
                    .padding(.leading, 15)
                    .foregroundColor(.white)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .bold()
                            .padding(.bottom, 10)
                        Text(String(score2))
                            .bold()
                    }
                    .padding(.trailing, 15)
                    .foregroundColor(.white)
                }
                Spacer()
                Text("Savoir Faire avec un Ingénieur")
                    .bold()
                    .foregroundColor(.white)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
            .previewDisplayName("iPhone XS Max")
    }
}

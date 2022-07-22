//
//  ContentView.swift
//  LookBookProject
//
//  Created by Farabi Dharma on 22/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor(named: "DarkBlue")!).ignoresSafeArea()
            VStack {
                VStack {
                    VStack {
                        VStack {
                            Text("Start Learning Objective's Generator").foregroundColor(Color.white)
                            Spacer()
                            Button ("Go"){
                                print("pressed")
                            }
                        }
                        Spacer()
                        VStack{
                            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/).foregroundColor(Color.white)
                            Button {
                                print("Button 1 pressed")
                            } label: {
                                HStack {
                                    Text("Length")
                                    Spacer()
                                    Text("minutes")
                                }
                                .accessibilityElement(children: .combine)
                            }
                            .foregroundColor(Color.white)
                            .padding(.vertical,22)
                            .padding(.horizontal)
                            .background(Color(UIColor(named: "DarkBlue")!))
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                            
                            Spacer().frame(height: 15)
                            
                            Button {
                                print("Button 2 pressed")
                            } label: {
                                HStack {
                                    Text("Length")
                                    Spacer()
                                    Text("minutes")
                                }
                                .accessibilityElement(children: .combine)
                            }
                            .foregroundColor(Color.white)
                            .padding(.vertical,22)
                            .padding(.horizontal)
                            .background(Color(UIColor(named: "DarkBlue")!))
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                            
                        }
                        .padding(.horizontal, 10)
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.all, 0.0)
            .previewDevice("iPhone 13")
    }
}


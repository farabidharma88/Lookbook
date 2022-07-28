//
//  DetailsView.swift
//  LookBookProject
//
//  Created by Farabi Dharma on 22/07/22.
//

import SwiftUI

struct DetailsView: View {
    @State var isLinkActiveDetails1 = false
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.white)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.white)]
    }
    var body: some View {
        ZStack{
            Color(UIColor(named: "DarkBlue")!).ignoresSafeArea()
            VStack(alignment: .center){
                VStack {
                    VStack {
                        VStack {
//                            Text("Start Learning Objective's Generator").foregroundColor(Color.white).font(.system(size: 32, weight: .bold)).frame(maxWidth: .infinity, alignment: .leading)
//                            Spacer().frame(height: 20)
                            Text("Start Learning Objective's Generator").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .bold)).frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer().frame(height: 100)
                            
                            Text("Business Proposal").foregroundColor(Color.white).font(.system(size: 24, weight: .semibold)).italic().frame(maxWidth: .infinity, alignment: .leading)
                            
                            ScrollView {
                                
                                ForEach(1..<10) {_ in
                                    NavigationLink(destination: Details2View(), isActive: $isLinkActiveDetails1) {
                                        Button {
                                            print("Button 1 pressed")
                                            self.isLinkActiveDetails1 = true
                                        } label: {
                                            HStack {
                                                Text("I can pitch a business idea/project").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .semibold)).lineLimit(1).padding(.trailing, 20)
                                                Spacer()
                                                Text("BUS 30").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .semibold))
                                            }
                                            .accessibilityElement(children: .combine)
                                        }
                                        .foregroundColor(Color.white)
                                        .padding(.vertical,22)
                                        .padding(.horizontal)
                                        .background(Color(UIColor(named: "DarkBlue")!))
                                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                    }
                                    
                                    Spacer().frame(height: 30)
                                }
                            }
                        }
                        //.padding(.vertical, 20)
                        .padding(.horizontal, 20)
                    }
                }
            }
        }
        
        .navigationBarTitle("Simaster")
//        .navigationBarHidden(true)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
            .padding(.all, 0.0)
            .previewDevice("iPhone 13")
    }
}

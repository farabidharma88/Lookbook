//
//  Details2View.swift
//  LookBookProject
//
//  Created by Farabi Dharma on 25/07/22.
//

import Foundation
import SwiftUI

struct Details2View: View {
    var body: some View {
        ZStack{
            Color(UIColor(named: "DarkBlue")!).ignoresSafeArea()
            VStack(alignment: .center){
                VStack {
                    VStack {
                        VStack {
//                            Text("BUS 30").foregroundColor(Color.white).font(.system(size: 32, weight: .bold)).frame(maxWidth: .infinity, alignment: .leading)
//                            
//                            Spacer().frame(height: 20)
                            
                            Text("Start Learning Objective's Generator").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .bold)).frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer().frame(height: 100)
                            
                            
                            ScrollView {
                                
                                ForEach(1..<10) {_ in
                                    Text("Objective").foregroundColor(Color.white).font(.system(size: 24, weight: .semibold).italic()).frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Spacer().frame(height: 20)
                                    
                                    Text("Start Learning Objective's Generator").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .semibold)).frame(maxWidth: .infinity, alignment: .leading)
                                    
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
        .navigationBarTitle("BUS30")
    }
}

struct Details2View_Previews: PreviewProvider {
    static var previews: some View {
        Details2View()
            .padding(.all, 0.0)
            .previewDevice("iPhone 13")
    }
}

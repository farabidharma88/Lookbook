//
//  ContentView.swift
//  LookBookProject
//
//  Created by Farabi Dharma on 22/07/22.
//

import SwiftUI

struct SuperTextField: View {
    
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
    
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @State var text1: String = "TextField Text"
    @State var text2: String = "TextField Text"
    
    var body: some View {
        ZStack{
            Color(UIColor(named: "DarkBlue")!).ignoresSafeArea()
            VStack(alignment: .center){
                Spacer()
                    .frame(height: 50)
                SuperTextField(
                    placeholder: Text("Placeholder Text").foregroundColor(.red),
                    text: $text1
                ).padding(.vertical,22)
                    .padding(.horizontal)
                    .background(Color(UIColor(named: "DarkBlue")!))
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                
                Spacer()
                    .frame(height: 20)
                
                SuperTextField(
                    placeholder: Text("Placeholder Text").foregroundColor(.red),
                    text: $text2
                ).padding(.vertical,22)
                    .padding(.horizontal)
                    .background(Color(UIColor(named: "DarkBlue")!))
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                
                Spacer()
                    .frame(height: 20)
                
                Button {
                    print("Button sheets pressed")
                    dismiss()
                } label: {
                    Text("Submit")
                }.frame(width: 150)
                    .padding(.vertical, 10)
                    .background(Color(UIColor(named: "DarkBlue")!))
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                Spacer()
            }
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    @State var isLinkActiveHistory1 = false
    var body: some View {
        NavigationView{
            ZStack{
                Color(UIColor(named: "DarkBlue")!).ignoresSafeArea()
                VStack(alignment: .center){
                    VStack {
                        VStack {
                            VStack {
                                Spacer()
                                    .frame(height: 50)
                                Text("Start Learning Objective's Generator").foregroundColor(Color.white).font(.system(size: 32, weight: .semibold)).frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                    .frame(height: 100)
                                
                                Button {
                                    print("Button x pressed")
                                    showingSheet.toggle()
                                } label: {
                                    HStack{
                                        Text("GO").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 64, weight: .semibold))
                                    }
                                    .frame(width: 200, height: 200)
                                }
                                .sheet(isPresented: $showingSheet) {
                                    SheetView()}
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                                .background(Color(UIColor(named: "DarkBlue")!))
                                .overlay(Circle().stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2).frame(width: 250, height: 250))
                                
                                Spacer().frame(height: 100)
                                
                                Text("History").foregroundColor(Color.white).font(.system(size: 32, weight: .semibold)).frame(maxWidth: .infinity, alignment: .leading)
                                
                                ScrollView {
                                    
                                    
                                    ForEach(1..<10) {_ in
                                        NavigationLink(destination: Text("DetailsView"), isActive: $isLinkActiveHistory1) {
                                            Button {
                                                print("Button 1 pressed")
                                                self.isLinkActiveHistory1 = true
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
                                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                                        }
                                        
                                        Spacer().frame(height: 30)
                                    }
                                }
                            }
                            //                        .padding(.vertical, 50)
                            .padding(.horizontal, 20)
                        }
                    }
                }
            }
            .navigationTitle("Content View")
            .navigationBarHidden(true)
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





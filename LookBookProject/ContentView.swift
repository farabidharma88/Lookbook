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
    @State var text1: String = ""
    @State var text2: String = ""
    
    var body: some View {
        ZStack{
            Color(UIColor(named: "DarkBlue")!).ignoresSafeArea()
            VStack(alignment: .center){
                Spacer()
                    .frame(height: 50)
                SuperTextField(
                    placeholder: Text("Name").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .semibold)),
                    text: $text1
                ).padding(.vertical,22)
                    .padding(.horizontal)
                    .background(Color(UIColor(named: "DarkBlue")!))
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
                
                Spacer()
                    .frame(height: 20)
                
                SuperTextField(
                    placeholder: Text("URL").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .semibold)),
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
                    Text("SUBMIT")
                }.frame(width: 150)
                    .padding(.vertical, 10)
                    .foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .semibold))
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
                                Text("Start Learning Objective's Generator").foregroundColor(Color.white).font(.system(size: 32, weight: .bold)).frame(maxWidth: .infinity, alignment: .leading)
                                
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
                                .overlay(Circle().stroke(LinearGradient(gradient: Gradient( colors: [Color(red: 0.43, green: 0.87, blue: 0.83), Color(red: 0.31, green: 0.64, blue: 0.89)]), startPoint: .top, endPoint: .bottom), lineWidth: 3).frame(width: 250, height: 250).shadow(color: .white, radius: 2, x: 0, y: 0))
                                
                                Spacer().frame(height: 100)
                                
                                Text("History").foregroundColor(Color.white).font(.system(size: 32, weight: .bold)).frame(maxWidth: .infinity, alignment: .leading)
                                
                                ScrollView {
                                    
                                    ForEach(1..<10) {_ in
                                        NavigationLink(destination: DetailsView(), isActive: $isLinkActiveHistory1) {
                                            Button {
                                                print("Button 1 pressed")
                                                self.isLinkActiveHistory1 = true
                                            } label: {
                                                HStack {
                                                    Text("Simaster").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .semibold)).lineLimit(1).padding(.trailing, 20)
                                                    Spacer()
                                                    Text("17/02/2022").foregroundColor(Color(UIColor(named: "DarkWhite")!)).font(.system(size: 16, weight: .semibold))
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
                            .padding(.vertical, 20)
                            .padding(.horizontal, 20)
                        }
                    }
                }
            }
            .navigationTitle("Home")
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





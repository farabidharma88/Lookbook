//
//  NLPProcessingView.swift
//  LookBookProject
//
//  Created by Farabi Dharma on 27/07/22.
//

import SwiftUI
import Foundation
import CoreML

struct NLPProcessingView: View {
    @State private var modelInput = ""
    @State private var modelOutput = ""
    @State private var finalText: String = ""
    //    let model = LookBookTextModels()
    func classify()-> String {
        do {
            let model = try LookBookTextModels(configuration: .init())
            guard let output = try? model.prediction(text: "Business is a core of the industries on this year") else {
                fatalError("Unexpected runtime error.")
            }
            modelOutput = output.label
            return modelOutput
        } catch {
            modelOutput = "Something went wrong"
            return modelOutput
        }
    }
    
    var body: some View {
        Button {
            finalText = classify()
            print(finalText)
            
            //            Text("\(modelOutput)")
        }label: {
            Text("hotdog")
        }
        Text(finalText)
        

        //        .onAppear{
        //            guard let output = try? model.prediction(text: "Business is a core of the industries on this year") else {
        //                fatalError("Unexpected runtime error.")
        //            }
        //            print("Model output \(output.label)")
        //        }
    }
}

struct NLPProcessingView_Previews: PreviewProvider {
    static var previews: some View {
        NLPProcessingView()
    }
}

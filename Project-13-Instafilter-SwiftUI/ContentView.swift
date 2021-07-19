//
//  ContentView.swift
//  Project-13-Instafilter-SwiftUI
//
//  Created by Baris Karalar on 18.07.2021.
//

import SwiftUI

//Wrapping a UIViewController in a SwiftUI view

struct ContentView: View {
    
    @State private var image: Image?
    @State private var showingImagePicker = false
    
    var body: some View {
        
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                showingImagePicker = true
            }
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker()
        }
        
    }
}

////Showing multiple options with ActionSheet
//
//struct ContentView: View {
//
//    @State private var showingActionSheet = false
//    @State private var backgroundColor = Color.white
//
//    var body: some View {
//
//        Text("Baroo asdasd")
//            .frame(width: 300, height: 300)
//            .background(backgroundColor)
//            .onTapGesture {
//                showingActionSheet = true
//            }
//            .actionSheet(isPresented: $showingActionSheet) {
//                ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
//                    .default(Text("Red")) { backgroundColor = .red },
//                    .default(Text("Green")) { backgroundColor = .green },
//                    .default(Text("Blue")) { backgroundColor = .blue }
//                ])
//            }
//
//    }
//}

//How property wrappers become structs
//Creating custom bindings in SwiftUI

//struct ContentView: View {
//
//    @State private var blurAmount : CGFloat = 0
////    {
////        didSet {
////            print(blurAmount)
////        }
////    }
//
//    var body: some View {
//
//        let blur = Binding<CGFloat>(
//            get: {
//                blurAmount
//            }, set: {
//                blurAmount = $0
//                print("New value is \(blurAmount)")
//            })
//
//
//       return VStack {
//            Text("Hello, world!")
//                .blur(radius: blurAmount)
//
//            Slider(value: blur, in: 0...20)
//
//
//        }
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Project-13-Instafilter-SwiftUI
//
//  Created by Baris Karalar on 18.07.2021.
//

import SwiftUI

//How property wrappers become structs
//Creating custom bindings in SwiftUI

struct ContentView: View {
    
    @State private var blurAmount : CGFloat = 0
//    {
//        didSet {
//            print(blurAmount)
//        }
//    }
    
    var body: some View {
        
        let blur = Binding<CGFloat>(
            get: {
                blurAmount
            }, set: {
                blurAmount = $0
                print("New value is \(blurAmount)")
            })
        
        
       return VStack {
            Text("Hello, world!")
                .blur(radius: blurAmount)
            
            Slider(value: blur, in: 0...20)


        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Project-13-Instafilter-SwiftUI
//
//  Created by Baris Karalar on 18.07.2021.
//

import SwiftUI

//Building our basic UI

struct ContentView: View {
    
    @State private var image: Image?
    @State private var filterIntensity = 0.5
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.secondary)
                    
                    //display the image
                    if image != nil {
                        image?
                            .resizable()
                            .scaledToFit()
                    } else {
                        Text("Tap to select a picture")
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    
                }
                .onTapGesture {
                    //select an image
                }
                
                HStack {
                    Text("Intensity")
                    Slider(value: $filterIntensity)
                }
                .padding()
                
                HStack {
                    Button("Change Filter") {
                        //change filter
                    }
                    
                    Spacer()
                    
                    Button("Save") {
                        //save the picture
                    }
                }
                
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("App Name")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


////How to save images to the user’s photo library
////Using coordinators to manage SwiftUI view controllers
////Wrapping a UIViewController in a SwiftUI view
//
//struct ContentView: View {
//
//    @State private var image: Image?
//    @State private var showingImagePicker = false
//
//    @State private var inputImage: UIImage?
//
//    var body: some View {
//
//        VStack {
//            image?
//                .resizable()
//                .scaledToFit()
//
//            Button("Select Image") {
//                showingImagePicker = true
//            }
//        }
//        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
//            ImagePicker(image: $inputImage)
//        }
//
//    }
//
//    func loadImage() {
//        guard let inputImage = inputImage else { return }
//        image = Image(uiImage: inputImage)
//
//        let imageSaver = ImageSaver()
//        imageSaver.writeToPhotoAlbum(image: inputImage)
//
//    }
//
//}
//
//class ImageSaver: NSObject {
//    func writeToPhotoAlbum(image: UIImage) {
//        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveError), nil)
//    }
//
//    @objc func saveError(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
//        print("Save finished")
//    }
//}

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


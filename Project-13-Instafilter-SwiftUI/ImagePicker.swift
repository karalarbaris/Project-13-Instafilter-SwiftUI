//
//  ImagePicker.swift
//  Project-13-Instafilter-SwiftUI
//
//  Created by Baris Karalar on 19.07.2021.
//

import Foundation
import SwiftUI

//Wrapping a UIViewController in a SwiftUI view

struct ImagePicker: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    typealias UIViewControllerType = UIImagePickerController
    
    
}

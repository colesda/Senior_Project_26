//
//  ViewController.swift
//  project_26_SP
//
//  Created by David Coles on 12/24/14.
//  Copyright (c) 2014 Remcho Research. All rights reserved.
//

import UIKit

class TakeMeasurement: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Test Requirement #2: 'Take a Measurement' Loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseImageFromPhotoLibrary(sender: AnyObject) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        presentViewController(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        imageView.image = (info[UIImagePickerControllerOriginalImage] as UIImage)
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}


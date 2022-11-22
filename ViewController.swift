//
//  ViewController.swift
//  GesturesRecog
//
//  Created by MJ Michand on 11/22/22.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    var isOld = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
        
    }
    
    @objc func changePic() {
        
        
        if isOld == true {
            imageView.image = UIImage(named: "Rush")
            myLabel.text = "New RUSH"
            isOld = false
            
            
        } else {
            imageView.image = UIImage(named: "RUSHOLD")
            myLabel.text = "Old RUSH"
            isOld = true
        }
        
    }
    
}
// thanks JKG

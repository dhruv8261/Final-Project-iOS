//
//  SignUpViewController.swift
//  Final Project
//
//  Created by Xcode User on 2018-12-05.
//  Copyright © 2018 Dhruv Patel. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameSignUp: UITextField!
    @IBOutlet weak var addressSignUp: UITextField!
    @IBOutlet weak var phoneSignUp: UITextField!
    @IBOutlet weak var emailSignUp: UITextField!
    
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
    @IBOutlet weak var avatarButton: UIButton!
    @IBOutlet weak var mortyButton: UIButton!
    @IBOutlet weak var ninjaButton: UIButton!
    @IBOutlet weak var rickButton: UIButton!
    
    @IBOutlet weak var chooseAvatar: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var maleGendar: UIImageView!
    @IBOutlet weak var femaleGendar: UIImageView!
    
    var mortyButtonCenter: CGPoint!
    var ninjaButtonCenter: CGPoint!
    var rickButtonCenter: CGPoint!
    
    func showbirthdatePicker() {
        birthdatePicker.setValue(UIColor(red:0.12, green:0.73, blue:0.50, alpha:1.0), forKeyPath: "textColor")
        //birthdatePicker.backgroundColor = UIColor(white: 1.0, alpha: 0.2)
    }
    
    @IBAction func submitInfo(sender: UIButton)
    {
        let alertController = UIAlertController(title: "Sign Up", message: "Successfully signed up!", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        nameSignUp.text = ""
        addressSignUp.text = ""
        phoneSignUp.text = ""
        emailSignUp.text = ""
        
        
        present(alertController, animated: true)
    }
    
    
    @IBAction func ageSlider(_ sender: UISlider) {
        ageLabel.text = String(Int(sender.value))
    }
    
    @IBAction func gendarChoose(_ sender: UISwitch) {
        if sender.isOn
        {
            femaleGendar.image = #imageLiteral(resourceName: "FemaleSelectedIcon.png")
            maleGendar.image = #imageLiteral(resourceName: "MaleIcon.png")
        }
        else
        {
            maleGendar.image = #imageLiteral(resourceName: "MaleSelectedIcon.png")
            femaleGendar.image = #imageLiteral(resourceName: "FemaleIcon.png")
        }
        
        
    }
    
    
    
    @IBAction func avatarClicked(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "AvatarOptionButtonON.png") {
            UIView.animate(withDuration: 0.3, animations: {
                self.chooseAvatar.alpha = 1
                self.ninjaButton.alpha = 0
                self.rickButton.alpha = 0
                self.mortyButton.alpha = 0
                
                self.ninjaButton.center = self.avatarButton.center
                self.rickButton.center = self.avatarButton.center
                self.mortyButton.center = self.avatarButton.center
                })
            sender.setImage(#imageLiteral(resourceName: "AvatarOptionButtton.png"), for: .normal)
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                self.chooseAvatar.alpha = 0
                self.ninjaButton.alpha = 1
                self.rickButton.alpha = 1
                self.mortyButton.alpha = 1
                
                self.mortyButton.center = self.mortyButtonCenter
                self.ninjaButton.center = self.ninjaButtonCenter
                self.rickButton.center = self.rickButtonCenter
            })
            sender.setImage(#imageLiteral(resourceName: "AvatarOptionButtonON.png"), for: .normal)
        }
    }
    
    @IBAction func mortyClicked(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "AvatarMortyButton.png"){
            sender.setImage(#imageLiteral(resourceName: "AvatarMortyButtonBW.png") , for: .normal)
            self.chooseAvatar.text = "Tap on button below to choose avatar"
            
        } else {
            sender.setImage(#imageLiteral(resourceName: "AvatarMortyButton.png") , for: .normal)
            self.chooseAvatar.text = "Avatar Chosen! ✔"
            ninjaButton.setImage(#imageLiteral(resourceName: "AvatarNinjaButtonBW.png"), for: .normal)
            rickButton.setImage(#imageLiteral(resourceName: "AvatarRickButtonBW.png"), for: .normal)
        }
        
    }
    
    @IBAction func ninjaClicked(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "AvatarNinjaButton.png") {
            self.chooseAvatar.text = "Tap on button below to choose avatar"
            sender.setImage(#imageLiteral(resourceName: "AvatarNinjaButtonBW.png") , for: .normal)
        } else {
            sender.setImage(#imageLiteral(resourceName: "AvatarNinjaButton.png"), for: .normal)
            self.chooseAvatar.text = "Avatar Chosen! ✔"
            mortyButton.setImage(#imageLiteral(resourceName: "AvatarMortyButtonBW.png"), for: .normal)
            rickButton.setImage(#imageLiteral(resourceName: "AvatarRickButtonBW.png"), for: .normal)
        }
    }
    
    @IBAction func rickClicked(_ sender: UIButton) {
       
        if sender.currentImage == #imageLiteral(resourceName: "AvatarRickButton.png") {
            self.chooseAvatar.text = "Tap on button below to choose avatar"
            sender.setImage(#imageLiteral(resourceName: "AvatarRickButtonBW.png") , for: .normal)
        } else {
            sender.setImage(#imageLiteral(resourceName: "AvatarRickButton.png") , for: .normal)
            self.chooseAvatar.text = "Avatar Chosen! ✔"
            ninjaButton.setImage(#imageLiteral(resourceName: "AvatarNinjaButtonBW.png"), for: .normal)
            mortyButton.setImage(#imageLiteral(resourceName: "AvatarMortyButtonBW.png"), for: .normal)
        }
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showbirthdatePicker()
        
        mortyButtonCenter = mortyButton.center
        rickButtonCenter = rickButton.center
        ninjaButtonCenter = ninjaButton.center
        
        ninjaButton.center = avatarButton.center
        rickButton.center = avatarButton.center
        mortyButton.center = avatarButton.center

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

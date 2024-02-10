//
//  ViewController.swift
//  carOptionsJonahW
//
//  Created by Jonah Whitney on 2/5/24.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Variables and constants
    var startingPrice = 50000
    let satNavPrice = 1500
    let leatherPrice = 1200
    let tiresPrice = 800
    let premiumSoundPrice = 1250
    
    let greenCarImage = UIImage(named: "Untitled-1_0000_Layer 3.jpg")         //(//UIImage(named: "green_car")
    let pinkCarImage = UIImage(named: "pink_car.jpg")
    let redOrangeCarIMage = UIImage(named: "redOrange_car.jpg")
    
    // MARK: Outlets
    @IBOutlet weak var currentColor: UIImageView!
    @IBOutlet weak var startPrice: UILabel!
    @IBOutlet weak var colorButtonGreen: UIButton!
    @IBOutlet weak var colorButtonPink: UIButton!
    @IBOutlet weak var colorButtonRedOrange: UIButton!
    
    @IBOutlet weak var satNavSwitch: UISwitch!
    @IBOutlet weak var upholsterySwitch: UISwitch!
    @IBOutlet weak var tireSwitch: UISwitch!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startPrice.text = String(startingPrice)
                
    }
    
    // MARK: Actions
    @IBAction func tapPink(_ sender: UIButton) {
        // print("PRESSED BUTTON!: ", sender.currentBackgroundImage?.imageAsset)
        // print("\(sender.currentBackgroundImage), G")
        changeColor(sender: sender)
    }
    
    @IBAction func satNavSwitched(_ sender: UISwitch) {
        
        addSatNav(sender: sender)
        
    }
    
    @IBAction func upholsterySwitched(_ sender: UISwitch) {
        
        addUpholstery(sender: sender)
    }
    
    @IBAction func tiresSwitched(_ sender: UISwitch) {
        
        addTirePrice(sender: sender)
    }
    
    @IBAction func soundSwitched(_ sender: UISwitch) {
        
        addSoundPrice(sender: sender)
    }
    
    // MARK: Methods
    func changeColor(sender: UIButton) {
        // print("\(sender.state), G")
        
        
        currentColor.image = sender.backgroundImage(for: .normal)

//        if (sender.backgroundImage(for: .normal) == greenCarImage) {
//            print("\(sender), PPPPPPPPPPPPPP")
//
//            currentColor.image = sender.backgroundImage(for: .normal)
//            
//        }
//        
//
//        else if (sender.backgroundImage(for: .normal) == pinkCarImage) {
//            currentColor.image = pinkCarImage
//            print("\(greenCarImage), P")
//            
//
//            
//        }
//        else if (sender.backgroundImage(for: .normal) == redOrangeCarIMage) {
//            
//            print("\(sender), RR")
//
//            currentColor.image = sender.backgroundImage(for: .normal)
//
//        }
    }
    
    func addSatNav (sender: UISwitch) {
        if sender.isOn {
            startingPrice += satNavPrice
            startPrice.text = String(startingPrice)
        }
        else {
            startingPrice -= satNavPrice
            startPrice.text = String(startingPrice)
        }
    }
    
    func addUpholstery (sender: UISwitch) {
        if sender.isOn {
            startingPrice += leatherPrice
            startPrice.text = String(startingPrice)
        }
        else {
            startingPrice -= leatherPrice
            startPrice.text = String(startingPrice)
        }
    }
    
    func addTirePrice (sender: UISwitch) {
        if sender.isOn {
            startingPrice += tiresPrice
            startPrice.text = String(startingPrice)
        }
        else {
            startingPrice -= tiresPrice
            startPrice.text = String(startingPrice)
        }
    }
    
    func addSoundPrice (sender: UISwitch) {
        if sender.isOn {
            startingPrice += premiumSoundPrice
            startPrice.text = String(startingPrice)
        }
        else {
            startingPrice -= premiumSoundPrice
            startPrice.text = String(startingPrice)
        }

    }
    
}


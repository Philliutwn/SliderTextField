//
//  ViewController.swift
//  SliderTextField
//
//  Created by 劉鴻祥 on 2018/7/21.
//  Copyright © 2018年 劉鴻祥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fontSize : Float = 0.0
    
    @IBOutlet weak var fontSizeSlider: UISlider!
    @IBOutlet weak var fontLenghLabel: UILabel!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var displayTextField: UITextField!
    @IBAction func fontSizeSliderMoved(_ sender: UISlider) {
        
        let fontName = displayTextField.font!
        fontSize = sender.value
        fontSizeLabel.text = String (format: "%.2f",fontSize)
        //print ("Slider value=",fontSize)
        //print (fontSizeLabel.text)
        displayTextField.font = fontName.withSize(CGFloat(fontSize))
        fontLenghLabel.text =  String (displayTextField.text!.count)
    }
    
    @IBAction func entryTextField(_ sender: UITextField) {
        
        fontSizeLabel.text = String (fontSizeSlider.value)
        fontLenghLabel.text =  String (displayTextField.text!.count)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


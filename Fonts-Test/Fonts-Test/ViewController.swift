//
//  ViewController.swift
//  Fonts-Test
//
//  Created by Mustafa Muhammad on 1/5/19.
//  Copyright © 2019 Ara Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    // MARK: Vars
    var fontList:[String] = []
    
    
    // MARK: Outlets
    @IBOutlet weak var fontsPicker: UIPickerView!
    @IBOutlet weak var fontSizeSlider: UISlider!
    @IBOutlet weak var previewLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFonts()
        updatePreview()
    }
    
    func loadFonts(){
        for  family in UIFont.familyNames{
            for  name in UIFont.fontNames(forFamilyName: family ){
                fontList.append(name)
            }
        }
        fontsPicker.reloadAllComponents()
    }
    
    func updatePreview(){
        let fontSize = fontSizeSlider.value
        let fontName = fontList[fontsPicker.selectedRow(inComponent: 0)]
        self.previewLabel.font = UIFont(name: fontName, size: CGFloat(fontSize))
    }
    
    @IBAction func fontSizeSliderValueChanged(_ sender: Any) {
        updatePreview()
    }
    
    
    // MARK: PICKER VIEW DATA SOURCE IMPLEMENTATION
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
       return fontList.count
    }


    // MARK: PickerViewDelegate Implementation
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return fontList[row];
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        updatePreview()
    }
}


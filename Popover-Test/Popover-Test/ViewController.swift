//
//  ViewController.swift
//  Popover-Test
//
//  Created by Mustafa Muhammad on 1/5/19.
//  Copyright © 2019 Ara Tech. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialBottomSheet

class ViewController: UIViewController,UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showPopupButtonPressed(_ sender: Any) {
        let ctrl = self.storyboard?.instantiateViewController(withIdentifier: "PopUpCtrl")
        let bottomSheet = MDCBottomSheetController(contentViewController: ctrl!)
        present(bottomSheet, animated: true, completion: nil)
        
    }
    
    
}


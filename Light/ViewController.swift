//
//  ViewController.swift
//  Light
//
//  Created by Yerdaulet Ismanaliyev on 10.12.2022.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
            lightButton.setTitleColor(.black, for: .normal)
            label.textColor = .black
        }else{
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
            label.textColor = .white
        }
    }
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
}

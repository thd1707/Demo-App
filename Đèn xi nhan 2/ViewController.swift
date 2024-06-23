//
//  ViewController.swift
//  Đèn xi nhan 2
//
//  Created by TY on 21/06/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblStatus: UILabel!
    
    @IBOutlet weak var btnSignalLight: UIButton!
    
    @IBAction func sliderChangeValue(_ : Any) {
    }
    
    @IBOutlet weak var colorWell: UIColorWell!
    
    var isFlashing = false
    var flashTimer: Timer?
    var backgroundColor : UIColor = .white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblStatus.text = "  " + "Xi nhan đang tắt"
        lblStatus.textColor = .red
        btnSignalLight.setTitle("Bật xi nhan", for: .normal)
      
        colorWell.addTarget(self, action: #selector(colorChanged(_:)), for: .valueChanged)
        
    }
    
    @IBAction func btnFlicker(_ sender: UIButton) {
        isFlashing.toggle()
        if isFlashing {
            startFlashing()
            btnSignalLight.setTitle("Tắt xi nhan", for: .normal)
            lblStatus.text = "  " + "Xi nhan đang BẬT"
            lblStatus.textColor = .green
            lblStatus.backgroundColor = .blue
        } else {
            stopFlashing()
            btnSignalLight.setTitle("Bật xi nhan", for: .normal)
            lblStatus.text = "  " + "Xi nhan đang TẮT"
            lblStatus.textColor = .yellow
            lblStatus.backgroundColor = .red
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        if isFlashing {
            stopFlashing()
            startFlashing()
        }
    }
    
    func startFlashing() {
        
    }
    
    func stopFlashing() {
    }
    
    
    @objc func colorChanged(_ color: UIColor) {
        if let selectedColor = colorWell.selectedColor {
            self.view.backgroundColor = selectedColor
        }
    }
}

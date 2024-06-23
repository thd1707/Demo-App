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
    
    @IBAction func sliderChangeValue(_ sender: Any) {
    }
    
    
    var isFlashing = false
    var flashTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblStatus.text = "Xi nhan đã tắt"
        lblStatus.textColor = .red
        btnSignalLight.setTitle("Bật xi nhan", for: .normal)
        
      
    }
    
    @IBAction func btnFlicker(_ sender: UIButton) {
        isFlashing.toggle()
        if isFlashing {
            startFlashing()
            btnSignalLight.setTitle("Tắt xi nhan", for: .normal)
            lblStatus.text = "Xi nhan đang bật"
            lblStatus.textColor = .green
        } else {
            stopFlashing()
            btnSignalLight.setTitle("Bật xi nhan", for: .normal)
            lblStatus.text = "Xi nhan đã tắt"
            lblStatus.textColor = .red
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        if isFlashing {
            stopFlashing()
            startFlashing()
        }
    }
    
    func startFlashing() {
//        let interval = TimeInterval(sliderChangeValue.value)
//        flashTimer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { [weak self] _ in
//            guard let self = self else { return }
//            self.view.backgroundColor = (self.view.backgroundColor == .white) ? .black : .white
//        }
    }
    
    func stopFlashing() {
        flashTimer?.invalidate()
        flashTimer = nil
        view.backgroundColor = .white
    }
}

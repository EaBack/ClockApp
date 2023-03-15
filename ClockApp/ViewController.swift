//
//  ViewController.swift
//  ClockApp
//
//  Created by Edgar Backer on 2023-03-13.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer : Timer?
    let formatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.timeStyle = DateFormatter.Style.medium // kan korter, maar voor lering en later opzoeken volledig uitgeschreven
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: updateTimeLabel(timer:))
        
        
    }
    
    func updateTimeLabel(timer: Timer){
        let date = Date()
        
        let timeeString = formatter.string(from: date)
        
        timeLabel.text = timeeString
    }
    
    deinit {
        timer?.invalidate()
    }


}


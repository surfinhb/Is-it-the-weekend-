//
//  ViewController.swift
//  Is it the weekend?
//
//  Created by Jake Shapiro on 12/7/20.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var question: UIButton!
    
    @IBAction func isItPressed(_ sender: Any) {
        let date = Date().dayNumberOfWeek()!
        isIt.isHidden = false
        if date == 6 || date == 7 {
            isIt.text = "yah bruddah"
        } else {
            isIt.text = "naya bra"
        }
        
    }
    
    
    @IBOutlet weak var isIt: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        print(Date().dayNumberOfWeek()!)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        question.titleLabel?.adjustsFontSizeToFitWidth = true
    }

}

extension Date {
    func dayNumberOfWeek() -> Int? {
        return Calendar.current.dateComponents([.weekday], from: self).weekday
    }
}


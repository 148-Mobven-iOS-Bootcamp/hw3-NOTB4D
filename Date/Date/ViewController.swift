//
//  ViewController.swift
//  Date
//
//  Created by Eser Kucuker on 7.01.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func datetimeSelected(_ sender: UIDatePicker) {
        /*let date = sender.date
        let calendar = Calendar.current

        let day = calendar.component(.day, from: date)
        let mounth = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        print("hours = \(day):\(mounth):\(year)")*/
        
        let date = sender.date
        print(date.dateAsPrettyString ?? Date())
        print(date.year ?? Date())
        print(date.day ?? Date())
        print(date.mount ?? Date())

        
    }
    
}
extension Date{
    
    var dateAsPrettyString: String? {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd<>MM<>yyyy"
        return formatter.string(from: self)
    }
 

    var year: String? {
            let calendar = Calendar.current
            let t = calendar.component(Calendar.Component.year, from: self)
            return String(t)

    }
    var mount: String? {
            let calendar = Calendar.current
            let t = calendar.component(Calendar.Component.month, from: self)
            return String(t)

    }
    var day: String? {
            let calendar = Calendar.current
            let t = calendar.component(Calendar.Component.day, from: self)
            return String(t)

    }
}


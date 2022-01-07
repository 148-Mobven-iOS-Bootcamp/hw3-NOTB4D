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
    @IBOutlet private weak var dateYear: UILabel!
    
    @IBOutlet private weak var dateDay: UILabel!
    
    @IBOutlet private weak var dateMonth: UILabel!
    
    
    @IBOutlet private weak var datePerrtyFormat: UILabel!
    
    
    
    
    @IBAction func datetimeSelected(_ sender: UIDatePicker) {

        let date = sender.date
        if let day = date.day {
        dateDay.text! = "Day : \(day)"
        }
        if let month = date.month {
            dateMonth.text! = "Month : \(month)"
        }
        
        if let year = date.year {
            dateYear.text! = "Year : \(year)"
        }
       
        if let datePerrty = date.dateAsPrettyString {
            
            datePerrtyFormat.text! = "Date : \(datePerrty)"
        }
        
        


        
    }
    
}
extension Date{
    
    //pretty date için dönüşümü burda yapıyoruz
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
    var month: String? {
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


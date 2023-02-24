//
//  ViewController.swift
//  DatePicker
//
//  Created by 표유림 on 2023/02/24.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime = ""
    var currentTime = ""
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm aaa"
        alarmTime = formatter.string(from:datePickerView.date)
        lblPickerTime.text = "선택시간: " + alarmTime
    }
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm aaa"
        currentTime = formatter.string(for: date)!
        lblCurrentTime.text = "현재시간: " + currentTime
        
        if (alarmTime == currentTime) {
            view.backgroundColor = UIColor.red
        }else {
            view.backgroundColor = UIColor.white
        }
    }
}


//
//  HomeViewController.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 25.05.23.
//

import UIKit

enum Weekdays: CaseIterable {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

class HomeViewController: UIViewController {
    
    private var myArray: [String] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        arrayAppendWeekdays()
        customBackgroundColorVC(colorVC: CustomColorVC.self.HomeViewController)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    }
    
    private func arrayAppendWeekdays() {
        var cellNumber = 0
        // TODO: - Title And ScrollView
        
        appendNewCellNumber(3)
        
        // TODO: - Add Week Days
        for day in Weekdays.allCases{
            myArray.append("\(day)")
        }
        
        appendNewCellNumber(10)
        func appendNewCellNumber(_ endNumber: Int) {
            for _ in 0..<endNumber {
                myArray.insert("\(cellNumber)", at: myArray.endIndex)
                cellNumber += 1
            }
        }
    }
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //         TODO: - did Select Row
                        print("Num: \(indexPath.row)")
                        print("Value: \(myArray[indexPath.row])")
    }
}
extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if Int(myArray[indexPath.row]) == 0 {
            return 150
        } else if Int(myArray[indexPath.row]) == 1 {
            return 150
        } else if Int(myArray[indexPath.row]) == 2 {
            return 150
        } else if Int(myArray[indexPath.row]) == nil {
            return 40
        }
        return 50
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(myArray[indexPath.row])"
        cell.backgroundColor = .random()

        return cell
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}

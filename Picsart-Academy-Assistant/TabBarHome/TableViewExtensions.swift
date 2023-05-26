//
//  TableViewExtensions.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 26.05.23.
//

import Foundation
import UIKit

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
    
    func arrayAppendWeekdays() {
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

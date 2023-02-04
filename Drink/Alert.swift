//
//  Alert.swift
//  Drink
//
//  Created by donghun on 2023/02/04.
//

import Foundation

struct Alert: Codable {
    var id: String = UUID().uuidString
    var date : Date
    var isOn : Bool
    var time: String  {
        let timeFormmater = DateFormatter()
        timeFormmater.dateFormat = "hh:mm"
        return timeFormmater.string(from: date)
    }
    var meridiem: String {
        let timeFormmater = DateFormatter()
        timeFormmater.dateFormat = "a"
        timeFormmater.locale = Locale(identifier: "ko")
        return timeFormmater.string(from: date)
    }
}

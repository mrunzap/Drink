//
//  AddAlertViewController.swift
//  Drink
//
//  Created by donghun on 2023/02/04.
//

import UIKit

class AddAlertViewController : UIViewController {
    
    var pickDate: ((_ date: Date) -> Void)?
    @IBOutlet weak var datePicker: UIDatePicker!
    
    // datePicker에 있는 시간값을 부모View에 넘겨줘야하는데...
    // closer로 넘겨준다.
    // 어떻게?
    @IBAction func dismissButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        pickDate?(datePicker.date)
        self.dismiss(animated: true)
    }
}

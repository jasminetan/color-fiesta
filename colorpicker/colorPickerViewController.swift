//
//  colorPickerViewController.swift
//  colorpicker
//
//  Created by Jasmine Tan on 7/8/18.
//  Copyright © 2018 Jasmine Tan. All rights reserved.
//

import UIKit

class colorPickerViewController: UIViewController {
    //private let dataSource = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    @IBOutlet var screen: UIView!
    var dataSource = [Color(name: "Red", uiColor: UIColor.red),
                      Color(name: "Orange", uiColor: UIColor.orange),
                      Color(name: "Yellow", uiColor: UIColor.yellow),
                      Color(name: "Green", uiColor: UIColor.green),
                      Color(name: "Blue", uiColor: UIColor.blue),
                      Color(name: "Purple", uiColor: UIColor.purple)]
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        detailLabel.text = dataSource[0].name
        screen.backgroundColor = dataSource[0].uiColor
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension colorPickerViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text = dataSource[row].name
        screen.backgroundColor = dataSource[row].uiColor
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row].name
    }
}














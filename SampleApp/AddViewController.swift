//
//  AddViewController.swift
//  SampleApp
//
//  Created by Koya on 2021/10/13.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "すること"
        
        taskTextField.frame.size.height = 40
        // NSAttributedStringを使ったデザインの変更
        let String: [NSAttributedString.Key : Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15)
        ]
        taskTextField.attributedPlaceholder = NSAttributedString(string: "タスク/メモを入力", attributes: String)
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

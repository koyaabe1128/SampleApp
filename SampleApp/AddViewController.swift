//
//  AddViewController.swift
//  SampleApp
//
//  Created by Koya on 2021/10/13.
//

import UIKit

var tasks = [String]()

class AddViewController: UIViewController {
    @IBOutlet weak var taskTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ビューの設定
        self.title = "すること"
        taskTextField.frame.size.height = 40
        let String: [NSAttributedString.Key : Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15)
        ]
        taskTextField.attributedPlaceholder = NSAttributedString(string: "タスク/メモを入力", attributes: String)
        
    }
    
    // 追加するボタンの設定
    @IBAction func addButton(_ sender: Any) {
        guard taskTextField.text!.isEmpty else {
            tasks.append(taskTextField.text!)
            UserDefaults.standard.set(tasks, forKey: "TaskList")
            self.navigationController?.popViewController(animated: true)
            return
        }
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

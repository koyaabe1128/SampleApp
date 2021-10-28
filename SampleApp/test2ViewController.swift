import UIKit

class test2ViewController: UIViewController {
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testButton.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        
        testButton.setTitle("test", for: .normal)
        testButton.setTitleColor(UIColor.black, for: .normal)
        testButton.titleEdgeInsets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 50)
        
        let image = UIImage(named: "train")
        testButton.setImage(image, for: .normal)
        testButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 30, bottom: 40, right: 0)
        
        testButton.backgroundColor = UIColor.white

    }
    
    @IBAction func testButton(_ sender: Any) {
        print("success")
    }
    
}

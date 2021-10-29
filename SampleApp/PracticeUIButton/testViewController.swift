import UIKit

class testViewController: UIViewController {
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set button size
        let width = UIScreen.main.bounds.size.width
        print(width)
        let buttonWidth = width - width/10
        print(buttonWidth)
        
        testButton.frame = CGRect(x: width/20, y: 100, width: buttonWidth, height: 300) // yは適当
        
        // title
        testButton.setTitle("test", for: .normal)
        testButton.setTitleColor(UIColor.black, for: .normal)
        testButton.titleLabel?.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: 100)
//        testButton.titleEdgeInsets = UIEdgeInsets(top: 200, left: 0, bottom: 0, right: 0)

        
        // image
        let image = UIImage(named: "test")
        testButton.setImage(image, for: .normal)
        testButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 200, right: 0)
        
        testButton.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        testButton.imageView?.layer.cornerRadius = 15
        testButton.imageView?.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        // button layout
        testButton.layer.cornerRadius = 15
        testButton.layer.backgroundColor = UIColor.systemGray.cgColor

    }
    
    @IBAction func testButton(_ sender: Any) {
        print("success")
    }
    
}

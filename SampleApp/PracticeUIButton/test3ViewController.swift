import UIKit

class test3ViewController: UIViewController {
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // layout
        testButton.backgroundColor = .white
        testButton.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        
        let width = UIScreen.main.bounds.size.width
        let buttonWidth = width - width/10
        testButton.frame = CGRect(x: width/20, y: 100, width: buttonWidth, height: 300) // yは適当
        
        // title
        testButton.setTitle("test", for: .normal)
        testButton.setTitleColor(.black, for: .normal)
        testButton.titleEdgeInsets = UIEdgeInsets (top: 200, left: 0, bottom: 0, right: 0)
        testButton.titleLabel?.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: 100)
        
        // image
        let image = UIImage(named: "test")
        testButton.setImage(image, for: .normal)
        testButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        testButton.imageView?.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: 200)
        
    }
   

}

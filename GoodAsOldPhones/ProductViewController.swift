import UIKit

class ProductViewController: UIViewController {
    
    var product : Product?

    
    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var productImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = product?.name
        if let i = product?.productImage {
            productImageView.image = UIImage(named: i)
            
        }
        
        
    }

    
    
    @IBAction func addToCartPressed(sender: AnyObject) {
        print ("button pressed")
    }

}

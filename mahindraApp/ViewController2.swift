import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func faceBook(_ sender: Any) {
        NotificationCenter.default.post(name: .facebook, object: nil)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func twitter(_ sender: Any) {
        NotificationCenter.default.post(name: .twitter, object: nil)
        navigationController?.popViewController(animated: true)
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

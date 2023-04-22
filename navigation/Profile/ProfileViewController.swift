
import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor.lightGray
        title = "Профиль"
        let profileHeader = ProfileHeaderView()
        self.view.addSubview(profileHeader)
        profileHeader.backgroundColor = UIColor.lightGray
        profileHeader.frame = self.view.frame
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

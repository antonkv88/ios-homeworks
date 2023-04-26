
import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Профиль"
        let profileHeader = ProfileHeaderView()
        view.addSubview(profileHeader)
        profileHeader.backgroundColor = UIColor.lightGray
        profileHeader.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileHeader.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            profileHeader.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            profileHeader.heightAnchor.constraint(equalToConstant: 220),
            ])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

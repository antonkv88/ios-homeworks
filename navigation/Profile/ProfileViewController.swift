
import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeader : ProfileHeaderView = {
        let header = ProfileHeaderView()
        header.backgroundColor = UIColor.lightGray
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    let newButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("New Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7;
        button.layer.shadowRadius = 4;
        button.layer.shadowOffset = CGSize(width: 4, height: 4);
        return button
    }()
    
    func addSubviews() {
        view.addSubview(profileHeader)
        view.addSubview(newButton)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileHeader.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            profileHeader.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            profileHeader.heightAnchor.constraint(equalToConstant: 220),
            newButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            newButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            newButton.heightAnchor.constraint(equalToConstant: 50),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Профиль"
        addSubviews()
        setConstraints()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

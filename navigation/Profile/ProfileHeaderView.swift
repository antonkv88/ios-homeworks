import UIKit

class ProfileHeaderView: UIView {
    
    let avatarImageView : UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        image.image = #imageLiteral(resourceName: "hipsterDog")
        image.layer.borderWidth = 3
        image.clipsToBounds = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let fullNameLabel : UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        label.text = "Hipster Dog"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let statusLabel : UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        label.text = "Waiting to something..."
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let setStatusButton : UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.backgroundColor = .blue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7;
        button.layer.shadowRadius = 4;
        button.layer.shadowOffset = CGSize(width: 4, height: 4);
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for : UIControlEvents.touchUpInside)
        return button
    }()
    
    
    @objc func buttonPressed(){
        print(statusLabel.text!)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 120),
            avatarImageView.heightAnchor.constraint(equalToConstant: 120),
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.safeAreaLayoutGuide.bottomAnchor, constant: 16),
            setStatusButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16),
            setStatusButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            setStatusButton.widthAnchor.constraint(equalToConstant: 120),
            fullNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            fullNameLabel.leftAnchor.constraint(equalTo: avatarImageView.safeAreaLayoutGuide.rightAnchor, constant: 30),
            statusLabel.bottomAnchor.constraint(equalTo: setStatusButton.safeAreaLayoutGuide.topAnchor, constant: -34),
            statusLabel.leftAnchor.constraint(equalTo: avatarImageView.safeAreaLayoutGuide.rightAnchor, constant: 30),
            ])
    }
    
    func setSubviews(){
        addSubview(avatarImageView)
        addSubview(setStatusButton)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setSubviews()
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

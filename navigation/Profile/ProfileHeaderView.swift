import UIKit

class ProfileHeaderView: UIView {
    
    lazy var profileImage = uiImage
    lazy var button = uiButton
    lazy var profileLabel = uiLabelProfile
    lazy var statusLabel = uiLabelStatus
    
    var uiImage : UIImageView {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        image.image = #imageLiteral(resourceName: "hipsterDog")
        image.layer.borderWidth = 3
        image.clipsToBounds = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    var uiLabelProfile : UILabel {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        label.text = "Hipster Dog"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    var uiLabelStatus : UILabel {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        label.text = "Waiting to something..."
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    var uiButton : UIButton {
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
    }
    
    @objc func buttonPressed(){
        print(statusLabel.text!)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            profileImage.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16),
            profileImage.widthAnchor.constraint(equalToConstant: 120),
            profileImage.heightAnchor.constraint(equalToConstant: 120),
            button.topAnchor.constraint(equalTo: profileImage.safeAreaLayoutGuide.bottomAnchor, constant: 16),
            button.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16),
            button.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 120),
            profileLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            profileLabel.leftAnchor.constraint(equalTo: profileImage.safeAreaLayoutGuide.rightAnchor, constant: 30),
            statusLabel.bottomAnchor.constraint(equalTo: button.safeAreaLayoutGuide.topAnchor, constant: -34),
            statusLabel.leftAnchor.constraint(equalTo: profileImage.safeAreaLayoutGuide.rightAnchor, constant: 30),
            ])
    }
    
    func setSubviews(){
        self.addSubview(profileImage)
        self.addSubview(button)
        self.addSubview(profileLabel)
        self.addSubview(statusLabel)
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

import UIKit

class ProfileHeaderView: UIView {
    
    var imageProfile : UIImageView?
    var labelProfileName : UILabel?
    var labelStatus : UILabel?
    var button : UIButton?
    
    func createButton() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.backgroundColor = .blue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7;
        button.layer.shadowRadius = 4;
        button.layer.shadowOffset = CGSize(width: 4, height: 4);
        return button
    }

    func createImage(_ picture : UIImage) -> UIImageView {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        image.image = picture
        image.layer.borderWidth = 3
        image.clipsToBounds = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.height/2
        return image
    }
    
    func createLabel(_ profileName : String, color textColor : UIColor, fontSize size : CGFloat, textStyle style : UIFont.Weight) -> UILabel {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        label.text = profileName
        label.textColor = textColor
        label.font = UIFont.systemFont(ofSize: size, weight: style)
        return label
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageProfile = createImage(#imageLiteral(resourceName: "hipsterDog"))
        self.addSubview(imageProfile!)
        imageProfile!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageProfile!.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            imageProfile!.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16),
            imageProfile!.widthAnchor.constraint(equalToConstant: 120),
            imageProfile!.heightAnchor.constraint(equalToConstant: 120)
        ])
        
        button = createButton()
        self.addSubview(button!)
        button!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button!.topAnchor.constraint(equalTo: imageProfile!.safeAreaLayoutGuide.bottomAnchor, constant: 16),
            button!.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16),
            button!.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -16),
            button!.heightAnchor.constraint(equalToConstant: 50),
            button!.widthAnchor.constraint(equalToConstant: 120)
        ])
        
        labelProfileName = createLabel("Brutal Dog", color : .black, fontSize : 18, textStyle : .bold)
        self.addSubview(labelProfileName!)
        labelProfileName!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelProfileName!.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            labelProfileName!.leftAnchor.constraint(equalTo: imageProfile!.safeAreaLayoutGuide.rightAnchor, constant: 30),
        ])
        
        labelStatus = createLabel("Waiting to something...", color : .gray, fontSize : 14, textStyle : .regular)
        self.addSubview(labelStatus!)
        labelStatus!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelStatus!.bottomAnchor.constraint(equalTo: button!.safeAreaLayoutGuide.topAnchor, constant: -34),
            labelStatus!.leftAnchor.constraint(equalTo: imageProfile!.safeAreaLayoutGuide.rightAnchor, constant: 30),
            ])
        
        button!.addTarget(self, action: #selector(buttonPressed), for : UIControlEvents.touchUpInside)
    }
    
    @objc func buttonPressed(){
        print(labelStatus!.text!)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

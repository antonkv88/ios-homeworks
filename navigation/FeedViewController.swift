import UIKit

class FeedViewController: UIViewController {
    
    private lazy var actionBtn : UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.setTitle("Открыть пост", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Лента"
        view.addSubview(actionBtn)
        actionBtn.addTarget(self, action: #selector(btnPressed(_:)), for: .touchUpInside)
    }
    
    @objc func btnPressed(_ sender: UIButton){
        let post = Post(title: "Супер-пупер новость")
        let postUI = PostViewController()
        postUI.post = post
        self.navigationController?.pushViewController(postUI, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

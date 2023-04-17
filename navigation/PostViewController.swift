import UIKit

class PostViewController: UIViewController {
    var post : Post?
    
    private var btnInfo : UIBarButtonItem {
        let button = UIBarButtonItem(image: #imageLiteral(resourceName: "info"), style: .plain, target: self, action: #selector(btnPressed(_:)))
        return button
    }
    
    @objc func btnPressed(_ sender : UIBarButtonItem){
        let infoUI = InfoViewController()
        present(infoUI, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = post?.title
        view.backgroundColor = .white
        self.navigationItem.rightBarButtonItem = btnInfo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

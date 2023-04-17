import UIKit

class InfoViewController: UIViewController {
    
    private lazy var actionBtn : UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.setTitle("Алерт!", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Инфо"
        view.addSubview(actionBtn)
        actionBtn.addTarget(self, action: #selector(btnPressed(_:)), for: .touchUpInside)
    }
    
    @objc func btnPressed(_ sender: UIButton){
        let alertUI = UIAlertController(title: "Внимание!", message: "Информативная ошибка унекспектед", preferredStyle: .alert)
        
        alertUI.addAction(UIAlertAction(title: "Действие №1", style: .default, handler: { (action) -> Void in
            print("Нажали на первую кнопку")
        }))
        alertUI.addAction(UIAlertAction(title: "Действие №2", style: .default, handler: { (action) -> Void in
            print("Нажали на вторую кнопку")
        }))
        present(alertUI, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}

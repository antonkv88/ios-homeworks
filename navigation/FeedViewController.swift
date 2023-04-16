//
//  FeedViewController.swift
//  navigation
//
//  Created by Антон Козлов on 16.04.2023.
//  Copyright © 2023 Антон Козлов. All rights reserved.
//

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
        view.backgroundColor = .blue
        view.addSubview(actionBtn)
        actionBtn.addTarget(self, action: #selector(btnPressed(_:)), for: .touchUpInside)
    }
    
    @objc func btnPressed(_ sender: UIButton){
        let postUI = PostViewController()
        postUI.modalTransitionStyle = .coverVertical
        postUI.modalPresentationStyle = .fullScreen
        present(postUI,animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

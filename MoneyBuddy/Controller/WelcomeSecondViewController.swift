//
//  WelcomeSecondViewController.swift
//  MoneyBuddy
//
//  Created by  User on 29.05.2022.
//

import UIKit

class WelcomeSecondViewController: UIViewController {
    
    // MARK: - Private Variables -
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = Strings.secondWelcomeLabelText
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Далее", for: .normal)
        button.backgroundColor = Colors.green
        button.layer.cornerRadius = 25
        button.layer.borderColor = UIColor.black.cgColor
        button.addTarget(self, action: #selector(showViewController(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - LifeCycle -
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Actions -
    
    @objc func showViewController(_ sender: UIButton) {
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    // MARK: - Setup -

    func setupViews (){
        view.addSubview(welcomeLabel)
        view.addSubview(nextButton)
    }
    
    func setupConstraints() {
        welcomeLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(300)
            $0.left.right.equalToSuperview().inset(45)
        }
        nextButton.snp.makeConstraints {
            $0.top.equalTo(welcomeLabel.snp.bottom).offset(30)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(50)
            $0.width.equalTo(180)
        }
    }

}

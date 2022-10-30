//
//  WelcomeViewController.swift
//  MoneyBuddy
//
//  Created by  User on 29.05.2022.
//

import UIKit
import SnapKit

class WelcomeViewController: UIViewController {
    
    // MARK: - Private variables -
    
    private lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "turtle")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
        
        private lazy var welcomeLabel: UILabel = {
            let label = UILabel()
            label.text = Strings.welcomeLabelText
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
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(showSecondPage), for: .touchUpInside)
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
    
    @objc func showSecondPage() {
        let vc = WelcomeSecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - Setup -
    
    func setupViews (){
        view.addSubview(logoImageView)
        view.addSubview(welcomeLabel)
        view.addSubview(nextButton)
     }
    
    func setupConstraints() {
        logoImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(200)
            $0.centerX.equalToSuperview()
        }
        welcomeLabel.snp.makeConstraints {
            $0.top.equalTo(logoImageView.snp.bottom).offset(30)
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

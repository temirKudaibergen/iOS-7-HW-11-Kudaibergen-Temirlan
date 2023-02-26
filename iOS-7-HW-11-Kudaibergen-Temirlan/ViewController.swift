//
//  ViewController.swift
//  iOS-7-HW-11-Kudaibergen-Temirlan
//
//  Created by Темирлан Кудайберген on 25.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private var lable: UILabel = {
        let lable = UILabel()
        lable.text = "Login"
        lable.textAlignment = .center
        lable.font = UIFont.boldSystemFont(ofSize: 30)
        lable.textColor = .white
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private var emailTextField: UITextField = {
        let emailImage = UIImage(named: "user")
        let correctImage = UIImage(named: "correct")
        let emailTextField = UITextField()
        emailTextField.placeholder = "Email"
        emailTextField.textColor = .black
        emailTextField.font = UIFont.systemFont(ofSize: 13)
        emailTextField.textAlignment = .left
        emailTextField.backgroundColor = .white
        emailTextField.borderStyle = .none
        emailTextField.layer.cornerRadius = 19
        emailTextField.returnKeyType = .go
        emailTextField.clearButtonMode = .whileEditing
        emailTextField.setLeftIcon(emailImage ?? UIImage.remove)
        emailTextField.setRightIcon(image: correctImage ?? UIImage.remove)
        return emailTextField
    }()
    
    private var passwordTextField: UITextField = {
        let passwordImage = UIImage(named: "padlock")
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.textColor = .black
        passwordTextField.font = UIFont.systemFont(ofSize: 13)
        passwordTextField.textAlignment = .left
        passwordTextField.backgroundColor = .white
        passwordTextField.borderStyle = .none
        passwordTextField.layer.cornerRadius = 19
        passwordTextField.returnKeyType = .go
        passwordTextField.clearButtonMode = .whileEditing
        passwordTextField.setLeftIcon(passwordImage ?? UIImage.remove)
        return passwordTextField
    }()
    
    private var buttonLogin: UIButton = {
        let buttonLogin = UIButton()
        buttonLogin.backgroundColor = .purple
        buttonLogin.clipsToBounds = true
        buttonLogin.layer.cornerRadius = 19
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.setTitleColor(.white, for: .normal)
        buttonLogin.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return buttonLogin
    }()
    
    
    private var buttonForgotPsw: UIButton = {
        let buttonForgotPsw = UIButton()
        buttonForgotPsw.backgroundColor = .none
        buttonForgotPsw.clipsToBounds = true
        buttonForgotPsw.setTitle("Forgot your password?", for: .normal)
        buttonForgotPsw.setTitleColor(.lightGray, for: .normal)
        buttonForgotPsw.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return buttonForgotPsw
    }()
    
    private var connectionLable: UILabel = {
        let lable = UILabel()
        lable.text = "or connect with"
        lable.textAlignment = .center
        lable.font = UIFont.systemFont(ofSize: 15)
        lable.textColor = .lightGray
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private var lineLeft: UIView = {
        let line = UIView()
        line.backgroundColor = .black
        line.layer.cornerRadius = 10
        return line
    }()
    
    private var lineRigth: UIView = {
        let line = UIView()
        line.backgroundColor = .black
        line.layer.cornerRadius = 10
        return line
    }()
    
    private var buttonFacebook: UIButton = {
        let buttonFacebook = UIButton()
        buttonFacebook.backgroundColor = .systemBlue
        buttonFacebook.layer.cornerRadius = 15
        buttonFacebook.setTitle("Facebook", for: .normal)
        buttonFacebook.setTitleColor(.white, for: .normal)
        buttonFacebook.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return buttonFacebook
    }()
    
    private var facebookIcon: UIImageView = {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image =  UIImage(named: "facebook")
        return iconView
    }()
    
    private var buttonTwitter: UIButton = {
        let buttonTwitter = UIButton()
        buttonTwitter.backgroundColor = .blue
        buttonTwitter.clipsToBounds = true
        buttonTwitter.layer.cornerRadius = 15
        buttonTwitter.setTitle("Twitter", for: .normal)
        buttonTwitter.setTitleColor(.white, for: .normal)
        buttonTwitter.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return buttonTwitter
    }()
    
    private var twitterIcon: UIImageView = {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image =  UIImage(named: "twitter")
        return iconView
    }()
    
    private var lableHaveAccount: UILabel = {
        let lable = UILabel()
        lable.text = "Dont have account?"
        lable.textAlignment = .center
        lable.font = UIFont.systemFont(ofSize: 15)
        lable.textColor = .lightGray
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private var buttonSignUp: UIButton = {
        let buttonForgotPsw = UIButton()
        buttonForgotPsw.backgroundColor = .none
        buttonForgotPsw.clipsToBounds = true
        buttonForgotPsw.setTitle("Sign Up", for: .normal)
        buttonForgotPsw.setTitleColor(.green, for: .normal)
        buttonForgotPsw.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return buttonForgotPsw
    }()
    
    // MARK: - Lifcycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png") ?? UIImage.remove)
        view.addSubview(lable)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(buttonLogin)
        view.addSubview(buttonForgotPsw)
        view.addSubview(connectionLable)
        view.addSubview(lineLeft)
        view.addSubview(lineRigth)
        view.addSubview(buttonFacebook)
        view.addSubview(buttonTwitter)
        view.addSubview(lableHaveAccount)
        view.addSubview(buttonSignUp)
        view.addSubview(facebookIcon)
        view.addSubview(twitterIcon)
        setupLayout()
        setupHierarchy()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(lable)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(buttonLogin)
        view.addSubview(buttonForgotPsw)
        view.addSubview(connectionLable)
        view.addSubview(lineLeft)
        view.addSubview(lineRigth)
        view.addSubview(buttonFacebook)
        view.addSubview(buttonTwitter)
        view.addSubview(lableHaveAccount)
        view.addSubview(buttonSignUp)
        view.addSubview(facebookIcon)
        view.addSubview(twitterIcon)
    }
    
    private func setupLayout() {
        lable.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.frame.height).offset(90)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(lable).offset(100)
            make.left.equalTo(view.frame.width).offset(75)
            make.height.equalTo(39)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(emailTextField).offset(55)
            make.left.equalTo(view.frame.width).offset(75)
            make.height.equalTo(39)
        }
        
        buttonLogin.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(passwordTextField).offset(90)
            make.left.equalTo(view.frame.width).offset(75)
            make.height.equalTo(39)
        }
        
        buttonForgotPsw.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(buttonLogin).offset(49)
            make.left.equalTo(view.frame.width).offset(75)
            make.height.equalTo(39)
        }
        
        connectionLable.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view).offset(-110)
            make.top.equalTo(buttonForgotPsw).offset(150)
            make.left.equalTo(view.frame.width).offset(75)
            make.height.equalTo(39)
        }
        
        lineLeft.snp.makeConstraints { make in
            make.centerX.equalTo(connectionLable.snp_centerXWithinMargins).offset(-120)
            make.centerY.equalTo(connectionLable.snp_centerYWithinMargins).offset(0)
            make.width.equalTo(100)
            make.height.equalTo(2)
        }
        
        lineRigth.snp.makeConstraints { make in
            make.centerX.equalTo(connectionLable.snp_centerXWithinMargins).offset(120)
            make.centerY.equalTo(connectionLable.snp_centerYWithinMargins).offset(0)
            make.width.equalTo(100)
            make.height.equalTo(2)
        }
        
        buttonFacebook.snp.makeConstraints { make in
            make.centerX.equalTo(view).offset(-80)
            make.top.equalTo(lineLeft).offset(35)
            make.height.equalTo(29)
            make.width.equalTo(150)
        }
        
        facebookIcon.snp.makeConstraints { make in
            make.centerX.equalTo(buttonFacebook.snp_centerXWithinMargins).offset(-55)
            make.top.equalTo(lineLeft).offset(37)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        
        buttonTwitter.snp.makeConstraints { make in
            make.centerX.equalTo(view).offset(80)
            make.top.equalTo(lineRigth).offset(35)
            make.height.equalTo(29)
            make.width.equalTo(150)
        }
        
        twitterIcon.snp.makeConstraints { make in
            make.centerX.equalTo(buttonTwitter.snp_centerXWithinMargins).offset(-55)
            make.top.equalTo(lineRigth).offset(37)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        
        lableHaveAccount.snp.makeConstraints { make in
            make.centerX.equalTo(view).offset(-60)
            make.top.equalTo(buttonFacebook).offset(45)
            make.height.equalTo(29)
            make.width.equalTo(150)
        }
        
        buttonSignUp.snp.makeConstraints { make in
            make.centerX.equalTo(view).offset(60)
            make.top.equalTo(buttonTwitter).offset(45)
            make.height.equalTo(29)
            make.width.equalTo(150)
        }
    }
}
// MARK: - Actions

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 4, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 37, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 4, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 25, y: 0, width: 40, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}


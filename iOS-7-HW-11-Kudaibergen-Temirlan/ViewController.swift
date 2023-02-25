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
        emailTextField.setLefyIcon(emailImage ?? UIImage.remove)
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
        passwordTextField.setLefyIcon(passwordImage ?? UIImage.remove)
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
        let facebookIcon = UIImage(named: "facebook.png")
        let buttonLogin = UIButton()
        buttonLogin.backgroundColor = .systemBlue
        buttonLogin.clipsToBounds = true
        buttonLogin.layer.cornerRadius = 19
        buttonLogin.setTitle("Facebook", for: .normal)
        buttonLogin.setTitleColor(.white, for: .normal)
        buttonLogin.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return buttonLogin
    }()
    
    private var buttonTwitter: UIButton = {
        let buttonLogin = UIButton()
        buttonLogin.backgroundColor = .blue
        buttonLogin.clipsToBounds = true
        buttonLogin.layer.cornerRadius = 19
        buttonLogin.setTitle("Twitter", for: .normal)
        buttonLogin.setTitleColor(.white, for: .normal)
        buttonLogin.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return buttonLogin
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
            make.centerX.equalTo(connectionLable.snp_centerXWithinMargins).offset(-110)
            make.centerY.equalTo(connectionLable.snp_centerYWithinMargins).offset(0)
            make.width.equalTo(100)
            make.height.equalTo(2)
        }
        
        lineRigth.snp.makeConstraints { make in
            make.centerX.equalTo(connectionLable.snp_centerXWithinMargins).offset(104)
            make.centerY.equalTo(connectionLable.snp_centerYWithinMargins).offset(0)
            make.width.equalTo(100)
            make.height.equalTo(2)
        }
        
        buttonFacebook.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(lable).offset(600)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(200)
            make.height.equalToSuperview().inset(407)
        }
        
        buttonTwitter.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(lable).offset(600)
            make.left.equalToSuperview().inset(200)
            make.right.equalToSuperview().inset(20)
            make.height.equalToSuperview().inset(407)
        }
        
        lableHaveAccount.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(lable).offset(650)
            make.left.equalToSuperview().inset(65)
            make.right.equalToSuperview().inset(200)
            make.height.equalToSuperview().inset(407)
        }
        
        buttonSignUp.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(lable).offset(650)
            make.left.equalToSuperview().inset(200)
            make.right.equalToSuperview().inset(86)
            make.height.equalToSuperview().inset(407)
        }
    }
}
// MARK: - Actions

extension UITextField {
    func setLefyIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 37, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
        
    }
}


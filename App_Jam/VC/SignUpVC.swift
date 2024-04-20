import UIKit

class SignUpVC: BaseVC {
    private let titleLabel = UILabel().then {
        $0.text = "회원가입"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 32, weight: .bold)
    }
    
    private let idTextField = UITextField().then {
        $0.backgroundColor = .white
        $0.attributedPlaceholder = NSAttributedString(string: "아이디를 입력하세요", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "PlaceholderTextColor"), NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .regular)])
        $0.layer.cornerRadius = 16
        $0.layer.shadowColor = UIColor(white: 0.0, alpha: 0.12).cgColor
        $0.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        $0.layer.shadowOpacity = 1.0
        $0.borderStyle = .none
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 27))
        $0.leftView = leftPaddingView
        $0.leftViewMode = .always
        
        $0.textColor = .black
    }
    
    private let passwordTextField = UITextField().then {
        $0.backgroundColor = .white
        $0.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력하세요", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "PlaceholderTextColor"), NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .regular)])
        $0.layer.cornerRadius = 16
        $0.layer.shadowColor = UIColor(white: 0.0, alpha: 0.12).cgColor
        $0.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        $0.layer.shadowOpacity = 1.0
        $0.borderStyle = .none
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 27))
        $0.leftView = leftPaddingView
        $0.leftViewMode = .always
        
        $0.textColor = .black
        
        $0.isSecureTextEntry = true
    }
    
    private let passwordCheckTextField = UITextField().then {
        $0.backgroundColor = .white
        $0.attributedPlaceholder = NSAttributedString(string: "비밀번호 확인", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "PlaceholderTextColor"), NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .regular)])
        $0.layer.cornerRadius = 16
        $0.layer.shadowColor = UIColor(white: 0.0, alpha: 0.12).cgColor
        $0.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        $0.layer.shadowOpacity = 1.0
        $0.borderStyle = .none
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 27))
        $0.leftView = leftPaddingView
        $0.leftViewMode = .always
        
        $0.textColor = .black
        
        $0.isSecureTextEntry = true
    }
    
    private let phoneNumberTextField = UITextField().then {
        $0.backgroundColor = .white
        $0.attributedPlaceholder = NSAttributedString(string: "전화번호를 입력하세요", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "PlaceholderTextColor"), NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .regular)])
        $0.layer.cornerRadius = 16
        $0.layer.shadowColor = UIColor(white: 0.0, alpha: 0.12).cgColor
        $0.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        $0.layer.shadowOpacity = 1.0
        $0.borderStyle = .none
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 27))
        $0.leftView = leftPaddingView
        $0.leftViewMode = .always
        
        $0.textColor = .black
    }
    
    private let validationTextButton = UIButton().then {
        $0.setImage(UIImage(named: "hi"), for: .normal)
        $0.addTarget(self, action: #selector(validationTextButtonDidTap), for: .touchUpInside)
    }
    
    private let 알림 = UIImageView(image: UIImage(named: "알림")).then {
        $0.isHidden = true
    }
    
    private let ValidationTextField = UITextField().then {
        $0.backgroundColor = .white
        $0.attributedPlaceholder = NSAttributedString(string: "인증번호 입력", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "PlaceholderTextColor"), NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .regular)])
        $0.layer.cornerRadius = 16
        $0.layer.shadowColor = UIColor(white: 0.0, alpha: 0.12).cgColor
        $0.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        $0.layer.shadowOpacity = 1.0
        $0.borderStyle = .none
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 27))
        $0.leftView = leftPaddingView
        $0.leftViewMode = .always
        
        $0.textColor = .black
    }
    
    private let signUpButton = UIButton().then {
        $0.backgroundColor = UIColor(named: "BlindDateenPink")
        $0.setTitle("회원가입", for: .normal)
        $0.layer.cornerRadius = 16
        $0.layer.masksToBounds = true
        $0.addTarget(self, action: #selector(SignUpButtonDidTap), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [titleLabel, idTextField, passwordTextField, passwordCheckTextField, phoneNumberTextField, ValidationTextField, signUpButton, 알림].forEach {
            view.addSubview($0)
        }
        
        phoneNumberTextField.addSubview(validationTextButton)
        
    }
    
    override func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(70)
            $0.centerX.equalToSuperview()
        }
        
        idTextField.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(titleLabel.snp.bottom).offset(32)
            $0.centerX.equalToSuperview()
        }
        
        passwordTextField.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(idTextField.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
        
        passwordCheckTextField.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
        
        phoneNumberTextField.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(passwordCheckTextField.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
        
        validationTextButton.snp.makeConstraints {
            $0.top.bottom.equalToSuperview()
            $0.trailing.equalToSuperview()
        }
        
        알림.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.equalToSuperview()
        }
        
        ValidationTextField.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(phoneNumberTextField.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
        
        signUpButton.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(ValidationTextField.snp.bottom).offset(84)
            $0.centerX.equalToSuperview()
        }
    }
    
    @objc func SignUpButtonDidTap() {
        let signInVC = SignInVC()
        signInVC.modalPresentationStyle = .fullScreen
        present(signInVC, animated: false, completion: nil)
    }
    
    @objc func validationTextButtonDidTap() {
        showNotificationAfterDelay()
    }
    
    func showNotificationAfterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.showNotification()
        }
    }
    
    func showNotification() {
        알림.isHidden = false
        view.addSubview(알림)
        
        알림.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
        }
        
        UIView.animate(withDuration: 0.3) {
            self.알림.transform = CGAffineTransform(translationX: 0, y: self.알림.bounds.height)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.hideNotification()
        }
    }

    func hideNotification() {
        UIView.animate(withDuration: 0.3, animations: {
            self.알림.transform = .identity
        }) { _ in
            self.알림.isHidden = true
            self.알림.removeFromSuperview()
        }
    }

    @objc override func keyboardWillShow(_ sender: Notification) {
        UIView.animate(withDuration: 0.3) {
            self.titleLabel.snp.makeConstraints {
                $0.top.equalToSuperview().offset(59)
                $0.centerX.equalToSuperview()
            }
            
            self.idTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.titleLabel.snp.bottom).offset(11)
                $0.centerX.equalToSuperview()
            }
            
            self.passwordTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.idTextField.snp.bottom).offset(8)
                $0.centerX.equalToSuperview()
            }
            
            self.passwordCheckTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.passwordTextField.snp.bottom).offset(8)
                $0.centerX.equalToSuperview()
            }
            
            self.phoneNumberTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.passwordCheckTextField.snp.bottom).offset(8)
                $0.centerX.equalToSuperview()
            }
            
            self.validationTextButton.snp.makeConstraints {
                $0.top.bottom.equalToSuperview()
                $0.trailing.equalToSuperview()
            }
            
            self.ValidationTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.phoneNumberTextField.snp.bottom).offset(8)
                $0.centerX.equalToSuperview()
            }
            
            self.signUpButton.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.ValidationTextField.snp.bottom).offset(23)
                $0.centerX.equalToSuperview()
            }
        }
    }

    @objc override func keyboardWillHide(_ sender: Notification) {
        UIView.animate(withDuration: 0.3) {
            self.titleLabel.snp.makeConstraints {
                $0.top.equalToSuperview().offset(70)
                $0.centerX.equalToSuperview()
            }
            
            self.idTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.titleLabel.snp.bottom).offset(32)
                $0.centerX.equalToSuperview()
            }
            
            self.passwordTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.idTextField.snp.bottom).offset(16)
                $0.centerX.equalToSuperview()
            }
            
            self.passwordCheckTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.passwordTextField.snp.bottom).offset(16)
                $0.centerX.equalToSuperview()
            }
            
            self.phoneNumberTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.passwordCheckTextField.snp.bottom).offset(16)
                $0.centerX.equalToSuperview()
            }
            
            self.validationTextButton.snp.makeConstraints {
                $0.top.bottom.equalToSuperview()
                $0.trailing.equalToSuperview()
            }
            
            self.ValidationTextField.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.phoneNumberTextField.snp.bottom).offset(16)
                $0.centerX.equalToSuperview()
            }
            
            self.signUpButton.snp.makeConstraints {
                $0.width.equalTo(361)
                $0.height.equalTo(56)
                $0.top.equalTo(self.ValidationTextField.snp.bottom).offset(84)
                $0.centerX.equalToSuperview()
            }
        }
    }
}

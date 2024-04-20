import UIKit

class SignInVC: BaseVC {
    private let titleLabel = UILabel().then {
        $0.text = "로그인"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 32, weight: .bold)
    }
    
    private let emailTextField = UITextField().then {
        $0.backgroundColor = .white
        $0.attributedPlaceholder = NSAttributedString(string: "이메일을 입력하세요", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "PlaceholderTextColor"), NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .regular)])
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
    
    private let loginButton = UIButton().then {
        $0.backgroundColor = UIColor(named: "BlindDateenPink")
        $0.setTitle("로그인", for: .normal)
        $0.layer.cornerRadius = 16
        $0.layer.masksToBounds = true
        $0.addTarget(self, action: #selector(logintButtonDidTap), for: .touchUpInside)
    }
    
    private let signUpText = UILabel().then {
        $0.text = "아직 가입을 안 하셨나요?"
        $0.textColor = UIColor(named: "SignUpTextColor")
        $0.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    }
    
    private let signUpButton = UIButton().then {
        $0.setTitle("회원가입하기", for: .normal)
        $0.setTitleColor(UIColor(named: "SignUpTextColor"), for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        $0.addTarget(self, action: #selector(signUpButtonDidTap), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [titleLabel, emailTextField, passwordTextField, loginButton, signUpText, signUpButton].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(348)
            $0.centerX.equalToSuperview()
        }
        
        emailTextField.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(titleLabel.snp.bottom).offset(26)
            $0.leading.equalToSuperview().offset(20)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(emailTextField.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(20)
        }
        
        loginButton.snp.makeConstraints {
            $0.width.equalTo(361)
            $0.height.equalTo(56)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(20)
        }
        
        signUpText.snp.makeConstraints {
            $0.top.equalTo(loginButton.snp.bottom).offset(8)
            $0.leading.equalToSuperview().offset(108)
        }
        
        signUpButton.snp.makeConstraints {
            $0.top.equalTo(loginButton.snp.bottom).offset(2)
            $0.leading.equalTo(signUpText.snp.trailing)
        }
    }
    
    @objc func logintButtonDidTap() {
        let mainVC = MainVC()
        mainVC.modalPresentationStyle = .fullScreen
        present(mainVC, animated: false, completion: nil)
    }
    
    @objc func signUpButtonDidTap() {
        let signUpVC = SignUpVC()
        signUpVC.modalPresentationStyle = .fullScreen
        present(signUpVC, animated: false, completion: nil)
    }
    
    @objc override func keyboardWillShow(_ sender: Notification) {
        UIView.animate(withDuration: 0.3) {
            self.titleLabel.snp.remakeConstraints {
                $0.top.equalToSuperview().offset(184)
                $0.centerX.equalToSuperview()
            }
        }
    }

    @objc override func keyboardWillHide(_ sender: Notification) {
        UIView.animate(withDuration: 0.3) {
            self.titleLabel.snp.remakeConstraints {
                $0.top.equalToSuperview().offset(348)
                $0.centerX.equalToSuperview()
            }
        }
    }
}

import UIKit
import SnapKit
import Then

public class BaseVC: UIViewController {

    let bounds = UIScreen.main.bounds

    public override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setupKeyboardEvent()
        configureUI()
        addView()
        setLayout()
    }
    
    @objc func keyboardWillShow(_ sender: Notification) { }
    
    @objc func keyboardWillHide(_ sender: Notification) { }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setupKeyboardEvent() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    func configureUI() {}
    func addView() {}
    func setLayout() {}
}

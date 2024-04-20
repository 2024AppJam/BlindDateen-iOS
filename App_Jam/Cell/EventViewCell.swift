import UIKit

import SnapKit
import Then

final class EventViewCell: UICollectionViewCell {
    // MARK: - Properties
    static let identifier = "EventCell"
    
    let coffeeEventCard = UIImageView(frame: CGRect(x: 0, y: 0, width: 362, height: 252)).then {
        $0.image = UIImage(named: "CoffeeEventCard")
    }
    
    let chickenEventCard = UIImageView(frame: CGRect(x: 0, y: 0, width: 362, height: 252)).then {
        $0.image = UIImage(named: "ChickenEventCard")
    }
    
    let museumEventCard = UIImageView(frame: CGRect(x: 0, y: 0, width: 362, height: 252)).then {
        $0.image = UIImage(named: "MuseumEventCard")
    }
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Add View
    private func addView() {
        [coffeeEventCard].forEach { contentView.addSubview($0)}
    }
    
    // MARK: - Layout
    private func setLayout() {
        coffeeEventCard.snp.makeConstraints {
            $0.width.equalTo(362)
            $0.height.equalTo(252)
            $0.top.equalToSuperview()
        }
        
        chickenEventCard.snp.makeConstraints {
            $0.width.equalTo(362)
            $0.height.equalTo(252)
            $0.top.equalTo(coffeeEventCard.snp.bottom).offset(16)
        }
        
        museumEventCard.snp.makeConstraints {
            $0.width.equalTo(362)
            $0.height.equalTo(252)
            $0.top.equalTo(chickenEventCard.snp.bottom).offset(16)
        }
    }
}

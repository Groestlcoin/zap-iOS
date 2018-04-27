//
//  Zap
//
//  Created by Otto Suess on 16.04.18.
//  Copyright © 2018 Zap. All rights reserved.
//

import Foundation

final class MnemonicWordTableViewCell: UITableViewCell {
    @IBOutlet private weak var indexLabel: UILabel!
    @IBOutlet private weak var wordLabel: UILabel!

    var index: Int? {
        didSet {
            guard let index = index else { return }
            indexLabel.text = String(index + 1)
        }
    }
    
    var word: String? {
        didSet {
            wordLabel.text = word
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        Style.label.apply(to: indexLabel, wordLabel) {
            $0.font = $0.font.withSize(24)
        }
        
        indexLabel.textColor = Color.disabled
        wordLabel.textColor = .white
    }
}
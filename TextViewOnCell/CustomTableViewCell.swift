//
//  CustomTableViewCell.swift
//  TextViewOnCell
//
//  Created by Kha on 5/16/20.
//  Copyright © 2020 Kha. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    var textViewDidChange: (() -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        textView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension CustomTableViewCell: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        guard let act = textViewDidChange else { return }
        act()
    }
}

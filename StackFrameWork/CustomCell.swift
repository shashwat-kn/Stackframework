//
//  CustomCell.swift
//  StackFrameWork
//
//  Created by Shashwat KN on 02/11/20.
//  Copyright © 2020 Flipkart. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    var cellButton: UIButton!
    var cellLabel: UILabel!

    init(frame: CGRect, title: String) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")

        cellLabel = UILabel(frame: CGRect(x: 10 , y: 10, width: 100.0, height: 40))
        cellLabel.textColor = UIColor.black

        cellButton = UIButton(frame: CGRect(x: self.frame.width - 100, y: 10, width: 50, height: 30))
        cellButton.setTitle(title, for: .normal)

        addSubview(cellLabel)
        addSubview(cellButton)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
}

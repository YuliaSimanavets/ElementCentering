//
//  BaseView.swift
//  DesignTasks
//
//  Created by Yuliya on 03/08/2023.
//

import Foundation
import UIKit

class BaseView: UIView {
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    override public required init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}

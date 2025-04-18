//
//  UIViewExtension.swift
//  PagerView
//
//  Created by Deepak Goyal on 05/08/23.
//

import UIKit

extension UIView{
    
    @discardableResult
    func fromNib() -> UIView?{
        
        let nibName = String(describing: Self.self)
        guard let contentView = Bundle.module.loadNibNamed(nibName, owner: self)?.first as? UIView else { return nil }
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(contentView)
        return contentView
    }
}

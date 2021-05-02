//
//  PexelCell.swift
//  PexelsSearch
//
//  Created by Naoki_Sawada on 2021/05/03.
//

import UIKit

class PexelCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var photographerName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure() {
        // TODO: set image and name
    }
}

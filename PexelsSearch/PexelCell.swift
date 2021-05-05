//
//  PexelCell.swift
//  PexelsSearch
//
//  Created by Naoki_Sawada on 2021/05/03.
//

import UIKit
import AlamofireImage

class PexelCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var photographerName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(photo: Photo) {
        imageView.af.setImage(withURL: URL(string: photo.src.small)!)
        photographerName.text = photo.photographer
    }
}

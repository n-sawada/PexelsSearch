//
//  ModalViewController.swift
//  PexelsSearch
//
//  Created by Naoki_Sawada on 2021/05/06.
//

import UIKit
import AlamofireImage

final class ModalViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var url: URL!
    
    static var modal: ModalViewController {
        return UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "ModalViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.af.setImage(withURL: url)
    }
    
    func configure(photo: Photo) {
        url = URL(string: photo.src.large)!
    }
    @IBAction func dismiss(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}

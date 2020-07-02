//
//  ScrollViewViewController.swift
//  TutorialApp
//
//  Created by Carly Cameron on 6/30/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit
import SafariServices

class ScrollViewViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var selectedItem : Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = selectedItem?.image!
        titleLabel.text = selectedItem?.title!
        descriptionLabel.text = selectedItem?.textDescription!
        
        print(selectedItem?.title)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLinkButtonPressed(_ sender: Any) {
        let SFVC = SFSafariViewController(url: URL(string: (selectedItem?.link)!)!)
        SFVC.delegate = self as! SFSafariViewControllerDelegate
        present(SFVC, animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

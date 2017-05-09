//
//  DetailViewController.swift
//  touch
//
//  Created by Qing-Cheng Li on 2017/5/9.
//  Copyright © 2017年 Qing-Cheng Li. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var contentLabel: UILabel!

    var content:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setupView() {
        if content != nil {
            self.contentLabel.text = content
        } else {
            self.contentLabel.text = "^_^"
        }

        let gr = UITapGestureRecognizer.init(target: self, action: #selector(tapHandler(_:)))
        contentLabel.addGestureRecognizer(gr)
        contentLabel.isUserInteractionEnabled = true
    }

    func tapHandler(_ gestureRecongizer:UIGestureRecognizer?) {
        if navigationController == nil {
            dismiss(animated: true, completion: { 
                // no-op
            })
        }
    }
}

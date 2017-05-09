//
//  ViewController.swift
//  touch
//
//  Created by Qing-Cheng Li on 2017/5/9.
//  Copyright © 2017年 Qing-Cheng Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let data = ["A", "B", "C"]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // dealloc??
    deinit {
        tableView.delegate = nil
        tableView.dataSource = nil
    }

    func setupView() {
        title = "List"

        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let dvc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        
        // cancel selected status
        tableView.deselectRow(at: indexPath, animated: false)
        
        // push view controller
        navigationController?.pushViewController(dvc, animated: true)
        

        // present modal view
        dvc.preferredContentSize = CGSize.init(width: 100, height: 100)
        dvc.modalPresentationStyle = UIModalPresentationStyle.custom
//        dvc.modalTransitionStyle = UIModalTransitionStyle.c
        present(dvc, animated: true) {
        }
    }
}


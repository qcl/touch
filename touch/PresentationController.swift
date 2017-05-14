//
//  PresentationController.swift
//  touch
//
//  Created by Qing-Cheng Li on 2017/5/9.
//  Copyright © 2017年 Qing-Cheng Li. All rights reserved.
//

import UIKit

class PresentationController: UIPresentationController {

    override func presentationTransitionWillBegin() {
        print("presentation transition will begin")
    }

    override func presentationTransitionDidEnd(_ completed: Bool) {
        print("presentation transition did end")
    }

    override func dismissalTransitionWillBegin() {
        print("dismissal trnasition will begin")
    }

    override func dismissalTransitionDidEnd(_ completed: Bool) {
        print("dismissal transition did end")
    }
}

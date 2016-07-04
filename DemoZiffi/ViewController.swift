//
//  ViewController.swift
//  DemoZiffi
//
//  Created by ziffi on 7/1/16.
//  Copyright © 2016 ziffi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        for i in 0..<4
        {
            let imageView = UIImageView(image: UIImage(named: "Image-\(i+1)"))
            imageView.frame.size = scrollView.frame.size
            imageView.frame.origin.y = 0
            imageView.frame.origin.x = CGFloat(i) * scrollView.frame.width
            scrollView.addSubview(imageView)
        }
        scrollView.contentSize.width = 4 * scrollView.frame.width
    }
    
    func showLoginScreen()
    {
        if let lg = storyboard?.instantiateViewControllerWithIdentifier("LoginPage") as? LoginViewController
        {
            navigationController?.pushViewController(lg, animated: true)
        }
    }

    @IBAction func login(sender: UIButton)
    {
        showLoginScreen()
    }
    
    @IBAction func signup(sender: UIButton)
    {
        print("zhmdgvc")
    }
}


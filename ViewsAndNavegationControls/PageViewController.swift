//
//  PageViewController.swift
//  ViewsAndNavegationControls
//
//  Created by David C Santander on 10/10/23.
//

import UIKit

class PageViewController: UIPageViewController {

    
    private var myControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myGreenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcGreen")
        let myBlueVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcBlue")
        
        myControllers.append(myGreenVC)
        myControllers.append(myBlueVC)
        
        setViewControllers([myGreenVC], direction: .forward, animated: true)
        
        dataSource = self

        // Do any additional setup after loading the view.
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

extension PageViewController:  UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        if index == 0 {
            return myControllers.last
        }else{
            return myControllers.first
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
        if index == 0 {
            return myControllers.last
        }else{
            return myControllers.first
        }
    }
    
    
}

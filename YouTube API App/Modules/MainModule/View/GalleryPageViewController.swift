//
//  GalleryPageViewController.swift
//  YouTube API App
//
//  Created by Irisandromeda on 07.01.2023.
//

import UIKit

class GalleryPageViewController: UIPageViewController {
    
    private var pages: [UIViewController] = []
    
    let colors: [UIColor] = [
        .red,
        .green,
        .blue,
        .cyan,
    ]
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0..<colors.count {
            let viewController = GalleryViewController()
            pages.append(viewController)
        }
        
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)

        dataSource = self
        delegate = nil
        
        setViewControllers([pages[0]], direction: .forward, animated: true, completion: nil)
        
        view.layer.cornerRadius = 4
    }
    
    @objc private func scrollToNextItem() {

    }

}

    //MARK: PageViewControllerDataSource

extension GalleryPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else { return pages.last }
        
        guard pages.count > previousIndex else { return nil }
        
        return pages[previousIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < pages.count else { return pages.first }
        
        guard pages.count > nextIndex else { return nil }
        
        return pages[nextIndex]
    }
}

    //MARK: PageViewControllerDelegate

extension GalleryPageViewController: UIPageViewControllerDelegate {
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pages.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        
        guard let firstVC = pageViewController.viewControllers?.first else { return 0 }
        
        guard let firstVCIndex = pages.firstIndex(of: firstVC) else { return 0 }
        
        return firstVCIndex
    }
}

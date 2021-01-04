//
//  RootViewController.swift
//  MVVM_IOS
//
//  Created by 신동규 on 2021/01/04.
//

import UIKit

class RootViewController: UITableViewController {
    
    // MARK: Properties
    private var articleViewModel:ArticleViewModel?
    
    
    // MARK: Lifecycles

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        callToViewModel()
    }
    
    // MARK: Configures
    
    func configureUI() {
        tableView.backgroundColor = .systemBackground
    }
    
    // MARK: Helpers
    func callToViewModel() {
        self.articleViewModel = ArticleViewModel()
        self.articleViewModel?.bindArticleViewModelToController = {
            print("ViewModel 의 bindArticleViewModelToController 함수 호출")
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
}

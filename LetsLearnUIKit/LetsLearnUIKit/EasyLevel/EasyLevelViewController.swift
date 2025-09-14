//
//  EasyLevelViewController.swift
//  LetsLearnUIKit
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 26.07.2025.
//

import UIKit

class EasyLevelViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let topics: [Topic] = [
        Topic(title: "Struct vs Class", screen: .structVsClass),
        Topic(title: "Memory Management", screen: .memoryManagement),
        Topic(title: "View Lifecycle", screen: .viewLifecycle)
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUI()
    }
    
    func loadUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "EasyTopicCell", bundle: nil),
                           forCellReuseIdentifier: "EasyTopicCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 60
    }

}

extension EasyLevelViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EasyTopicCell") as? EasyTopicCell else {
            return UITableViewCell()
        }
        let topic = topics[indexPath.row]
        cell.label.text = topic.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let topic = topics[indexPath.row]
        let vc = ScreenFactory.makeViewController(for: topic.screen)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

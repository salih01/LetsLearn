//
//  EasyLevelViewController.swift
//  LetsLearnUIKit
//
//  Yeni konu eklemek için:
//  1. Topics klasörüne yeni bir ViewController dosyası ekle
//  2. Aşağıdaki topics dizisine bir satır ekle
//

import UIKit

class EasyLevelViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let topics: [(title: String, makeVC: () -> UIViewController)] = [
        ("Struct vs Class", { StructVsClassViewController() }),
        ("Memory Management", { MemoryManagementViewController() }),
        ("View Lifecycle", { ViewLifecycleViewController() })
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "UIKit Konuları"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "EasyTopicCell", bundle: nil),
                           forCellReuseIdentifier: "EasyTopicCell")
    }
}

extension EasyLevelViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        topics.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EasyTopicCell", for: indexPath) as! EasyTopicCell
        cell.label.text = topics[indexPath.row].title
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let topic = topics[indexPath.row]
        let vc = topic.makeVC()
        vc.title = topic.title
        navigationController?.pushViewController(vc, animated: true)
    }
}

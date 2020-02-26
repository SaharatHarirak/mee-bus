//
//  SettingViewController.swift
//  MeeVan
//
//  Created by CherChamp on 23/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

struct tab {
    var title: String
    var image: UIImage
}

import UIKit
class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    private var tabs = [tab]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tabs.insert(tab(title: "Setting", image: #imageLiteral(resourceName: "icon-phone")), at: 0)
        tabs.insert(tab(title: "How", image: #imageLiteral(resourceName: "icon-phone")), at: 1)
        tabs.insert(tab(title: "Announcement", image: #imageLiteral(resourceName: "icon-phone")), at: 2)
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tabs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileTabCell", for: indexPath)
        cell.textLabel?.text = tabs[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyboard = UIStoryboard(name: "Setting", bundle: Bundle.main)
        
        guard let vc = storyboard.instantiateViewController(withIdentifier: "SettingNavigator") as? SettingNavigator else { return }
        let title = tabs[indexPath.row].title
        switch title {
        case "Setting":
            present(vc, animated: true, completion: nil)
            break
        default:
            break
        }
    }

    @IBAction func languageCustomSegmentControlValueChange(_ sender: LanguageSegmentControl) {
        switch sender.segmentIndex {
        case 0:
            CurrentLanguage.language = "th"
            break
        case 1:
            CurrentLanguage.language = "en"
        default:
            break
        }
    }
}

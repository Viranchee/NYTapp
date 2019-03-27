//
//  DetailViewController.swift
//  heady
//
//  Created by Ketan Lotia on 26/03/19.
//  Copyright © 2019 Viranchee. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    var topics: NYTJson!
    
    override func loadView() {
        print("hello")
        

        //        tableView.reloadData()
    }
    override func viewDidLoad() {
        print("2")



    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.num_results
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = topics.results[indexPath.row].title
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "webview") as? WebView {
            let urlString = topics.results[indexPath.row].url
            vc.website = URL(string: urlString)!
            navigationController?.pushViewController(vc, animated: true)
        }

    }


}

//let x = Sections.allCases
//for section in x {
//    print(section.rawValue)
//    let url =  NYT.urlMaker(section: section)
//    let data = try? Data(contentsOf: url)
//
//    guard let dataa = data else {
//        print(url)
//        return
//    }
//    print(dataa)
//}

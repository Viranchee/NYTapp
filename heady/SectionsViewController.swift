//
//  ViewController.swift
//  heady
//
//  Created by Ketan Lotia on 26/03/19.
//  Copyright © 2019 Viranchee. All rights reserved.
//

import UIKit

class SectionsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "NYT Top Articles"

//        for section in Sections.allCases {
//            print(NYT.urlMaker(section: section))
//        }
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Sections.allCases[indexPath.row].rawValue
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Sections.allCases.count
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "detail") as? DetailViewController {
            let thisSection = Sections.allCases[indexPath.row]
            let url = NYT.urlMaker(section: thisSection)
            print(url)
            let dataOptional = try? Data(contentsOf: url)
            guard let data = dataOptional else { return }
        
            let jsonDecoder = JSONDecoder()
            let topics = try? jsonDecoder.decode(NYTJson.self, from: data)
            guard let resultsArray = topics?.results else { return }
            vc.topics = resultsArray
            print(#file)
            navigationController?.pushViewController(vc, animated: true)

        }
    }
}



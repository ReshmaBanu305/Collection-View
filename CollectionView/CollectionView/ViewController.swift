//
//  ViewController.swift
//  CollectionView
//
//  Created by Admin on 6/10/24.
//

import UIKit

class ViewController: UIViewController{
var myNAME = "rESHMA"
    var myName = "reh"
    @IBOutlet weak var homeCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        homeCollectionView.register(UINib(nibName: "homeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "homeCollectionViewCell")
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
    }


}
extension ViewController: UICollectionViewDelegate{

}
extension ViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    //func indexTitles(for collectionView: UICollectionView) -> [String]? {
       // return ["tree 1", "tree 2", "tree3", "tree4"]
    //}
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "homeCollectionViewCell", for: indexPath)
        return cell
    }
    
  
}

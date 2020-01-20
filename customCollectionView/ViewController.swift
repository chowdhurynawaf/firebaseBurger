//
//  ViewController.swift
//  customCollectionView
//
//  Created by Macbook on 05/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

var counter = 0

var indexNo : Int?
var sumofTotalAmount =  [Int]()

var  burgerName = ["a" , "b"  , "c" , "d"  , "e" , "f" , "g" , "h"]
var burgerPrice = [10 , 20 , 30 ,40 , 50 , 60 , 70 , 80]

var selectedItem = [String]()

var priceOfTheSelectedItem = [Int]()

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    
    
    
    @IBOutlet weak var counterLbl: UILabel!
    
    
    
    
    var  burgerDictionary = ["a" : 80 , "b" : 90 , "c" : 59 , "d" : 48 , "e" : 48 , "f":48 , "g":47 , "h":36]
    
    
    
     var indexNO : Int?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return burgerName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! customCollectionViewCell
        
        cell.burgerImage.image = UIImage(named: burgerName[indexPath.row] + ".png")
        cell.burgerLabel.text = burgerName[indexPath.row]
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{


        let width = (collectionView.frame.width - 30)/2
        let height = width

        return CGSize(width: width, height: height)

    }

    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        indexNO = indexPath.row
        
        counter += 1
        
        counterLbl.text = String (counter)
        
        
        selectedItem.append(burgerName[indexPath.row])
        indexNo = indexPath.row
        priceOfTheSelectedItem.append(indexNO!)
        sumofTotalAmount.append(burgerPrice[indexNO!])
        
        
//        sumofTotalAmount.append("\(burgerPrice[priceOfTheSelectedItem[indexPath.row]])")
        
        
        
        print(selectedItem)
        
        print(burgerPrice[indexNO!])
        
       
        
        print(sumofTotalAmount)
        print(sumofTotalAmount.reduce(0, +))
        
        
        
        
        
        
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! secondViewController
        
        vc.labelNo = indexNO
    }
    
    
    
    
    @IBAction func cartButtonPressed(_ sender: Any) {
        
        
        
        
        
        
        performSegue(withIdentifier: "firstToSecond", sender: self)
            
        }
    
    
        
    }
    





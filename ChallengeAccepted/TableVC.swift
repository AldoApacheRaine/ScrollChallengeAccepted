//
//  TableVC.swift
//  ChallengeAccepted
//
//  Created by Максим Хмелев on 19.05.2022.
//

import UIKit

class TableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var chalengeAcceptedTableView: UITableView!
    
    var featuresArray: [FeaturesStruct] = [
        FeaturesStruct(featuresText: "Fit Series workouts", freeAtribute: true,    proAtribute: true),
        FeaturesStruct(featuresText: "NXTLVL Social Feed", freeAtribute: true, proAtribute: true),
        FeaturesStruct(featuresText: "Receive New Articles & Recipes", freeAtribute: true, proAtribute: true),
        FeaturesStruct(featuresText: "HD Exercise Instruction Videos", freeAtribute: true, proAtribute: true),
        FeaturesStruct(featuresText: "Compete in Global Ranking Leaderboard", freeAtribute: true, proAtribute: true),
        FeaturesStruct(featuresText: "Unlock all Fit & Sport Series workouts", freeAtribute: false, proAtribute: true),
        FeaturesStruct(featuresText: "New workouts added monthly", freeAtribute: false, proAtribute: true),
        FeaturesStruct(featuresText: "NXTLVL Challenges", freeAtribute: false, proAtribute: true),
        FeaturesStruct(featuresText: "Performance tracking with NXTLVL Fit Tests", freeAtribute: false, proAtribute: true)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegates()
    }
    
    private func setDelegates() {
        chalengeAcceptedTableView.dataSource = self
        chalengeAcceptedTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section != 4 {
            return 1
        } else {
            return featuresArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let сell = tableView.dequeueReusableCell(withIdentifier: "logoCell") as! LogoTableViewCell
            return сell
        } else if indexPath.section == 1 {
            let сell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell") as! DescriptionTableViewCell
            return сell
        } else if indexPath.section == 2 {
            let сell = tableView.dequeueReusableCell(withIdentifier: "buttonCell") as! ButtonTableViewCell
            return сell
        } else if indexPath.section == 3{
            let сell = tableView.dequeueReusableCell(withIdentifier: "featuresCell") as! FeaturesTableViewCell
            return сell
        } else if indexPath.section == 4 {
            let сell = tableView.dequeueReusableCell(withIdentifier: "reuseCell") as! ReuseTableViewCell
            
            let feature = featuresArray[indexPath.row]
            print(feature)
            
            сell.featureLabel.text = feature.featuresText
            
            if feature.freeAtribute == true {
                сell.freeImageView.image = UIImage(named: "Check")
            } else {
                сell.freeImageView.image = UIImage(named: "Cross")
            }
            
            if feature.proAtribute == true {
                сell.proImageView.image = UIImage(named: "CheckYel")
            } else {
                сell.proImageView.image = UIImage(named: "Cross")
            }
            
            return сell
            
        } else {
            let сell = tableView.dequeueReusableCell(withIdentifier: "subscriptionCell") as! SubscriptionTableViewCell
            return сell
        }
    }
}

//
//  MealListTableViewCell.swift
//  2210990915_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class MealListTableViewCell: UITableViewCell {

    @IBOutlet var mealImage: UIImageView!
    @IBOutlet var mealName: UILabel!
    @IBOutlet var mealCalories: UILabel!
    @IBOutlet var mealTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    func updateUI(meal: Recipe) {
        mealImage.image = UIImage(named: "unknown.jpeg")
        mealName.text = meal.title
        mealCalories.text = "\(meal.calories) Calories"
        mealTime.text = meal.time
        mealImage.image = UIImage(named: meal.imageName)
    }

    
}

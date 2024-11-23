//
//  editedMealListTableViewController.swift
//  2210990915_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class EditedMealListTableViewController: UITableViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    var meal:Recipe?
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var caloriesTextField: UITextField!
    @IBOutlet var TimeTextField: UITextField!
    @IBOutlet var saveButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Add/Edit meals"
        updateUI()
        saveButton.isEnabled = false
      
    }
    init?(coder: NSCoder, meal: Recipe?) {
        self.meal = meal
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func updateUI() {
            guard let meal = meal else { return }
            image.image = UIImage(named: meal.imageName)  // Assuming the meal has an image
            nameTextField.text = meal.title
            caloriesTextField.text = "\(meal.calories)"
            TimeTextField.text = meal.time
        }
    
    @IBAction func textChanged(_ sender: Any) {
        if let name = nameTextField.text, !name.isEmpty,
           let calories = caloriesTextField.text, !calories.isEmpty,
           let time = TimeTextField.text, !time.isEmpty {
             saveButton.isEnabled = true
            meal = Recipe(
                title: name,
                imageName: meal?.imageName ?? "default_image",
                ingredients: meal?.ingredients ?? "Ingredients",
                instructions: meal?.instructions ?? "Instructions",
                calories: Int(calories) ?? 0,
                time: time
            )
        }
    }
   
}

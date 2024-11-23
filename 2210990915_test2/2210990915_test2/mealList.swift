//
//  mealList.swift
//  2210990915_test2
//
//  Created by student-2 on 23/11/24.
//

import Foundation
import UIKit

struct Recipe {
    let title: String
    let imageName: String
    let ingredients: String
    let instructions: String
    let calories: Int
    let time: String
}

var recipes = [Recipe(title: "Lemon Rice",imageName: "lemon_rice",ingredients: "• Rice\n• Lemon\n• Mustard Seeds\n• Curry Leaves\n• Green Chilies\n• Peanuts\n• Turmeric\n• Salt",instructions: """
        1. Cook rice and set aside to cool.
        2. Heat oil in a pan and add mustard seeds, curry leaves, and green chilies.
        3. Add turmeric powder and sauté briefly.
        4. Stir in the cooked rice and toss to combine.
        5. Add lemon juice and salt, then mix in roasted peanuts.
        6. Garnish with fresh coriander leaves and serve.
        """,
        calories: 350,
        time: "20 mins"
    ),Recipe(title: "Sambar",imageName: "sambar",ingredients: "• Toor Dal (yellow lentils)\n• Tamarind\n• Tomatoes\n• Sambar Powder\n• Mustard Seeds\n• Curry Leaves\n• Vegetables (carrot, drumstick, potato)\n• Oil\n• Salt",instructions: """
        1. Cook toor dal in a pressure cooker with enough water.
        2. In a separate pan, sauté mustard seeds, curry leaves, and onions.
        3. Add chopped vegetables, tomatoes, tamarind pulp, and water.
        4. Stir in sambar powder and salt, then cook until the vegetables are soft.
        5. Add cooked dal to the vegetable mix and simmer for 10-15 minutes.
        6. Garnish with fresh coriander leaves and serve hot with rice or dosa.
        """,
        calories: 250,
        time: "45 mins"
    ),
    
    Recipe(title: "Dosa",imageName: "dosa",ingredients: "• Rice\n• Urad Dal (split black gram)\n• Fenugreek Seeds\n• Salt\n• Water",instructions: """
        1. Soak rice, urad dal, and fenugreek seeds overnight.
        2. Grind the mixture into a smooth batter with water.
        3. Let the batter ferment for 12-24 hours.
        4. Heat a non-stick tawa or griddle and pour a ladle of batter.
        5. Spread it into a thin circle and cook until crispy.
        6. Serve with chutney and sambar.
        """,
        calories: 150,
        time: "24 hours (for fermentation) + 10 mins cooking"
    ),
    
    Recipe(title: "Chicken Rice",imageName: "chicken_rice",ingredients: "• Basmati Rice\n• Chicken\n• Ginger-Garlic Paste\n• Onion\n• Tomatoes\n• Turmeric\n• Garam Masala\n• Yogurt\n• Oil\n• Salt",instructions: """
        1. Marinate chicken with yogurt, ginger-garlic paste, turmeric, garam masala, and salt.
        2. Heat oil in a pan and sauté onions until golden.
        3. Add marinated chicken and cook until browned.
        4. Stir in chopped tomatoes and cook until soft.
        5. Add water and bring to a boil, then add washed basmati rice.
        6. Cook until the rice is tender and the water is absorbed.
        7. Serve hot, garnished with cilantro.
        """,
        calories: 550,
        time: "40 mins"
    )
]

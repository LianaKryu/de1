//
//  ViewController.swift
//  de
//
//  Created by LianaKryu on 08.12.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// вызов AlertConrtoller
    @IBAction func signInAction(_ sender: Any) {
        let alert = UIAlertController(title: "Авторизация", message: "Введите Ваш логин и пароль", preferredStyle: .alert)
// добавление текстовых полей
        alert.addTextField { (textField) in
            textField.placeholder = "Username"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Password"
        }
// объявление кнопок отмена и войти
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        let addAction = UIAlertAction(title: "Войти", style: .default, handler: nil)
// добавление кнопок отмена и войти на AlertController
        alert.addAction(cancelAction)
        alert.addAction(addAction)
// создание AlertControler
        self.present(alert, animated: true, completion: nil)
    }
    
    
}


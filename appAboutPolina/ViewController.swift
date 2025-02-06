//
//  ViewController.swift
//  appAboutPolina
//
//  Created by Polina Stelmakh on 06.02.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Info About Me"

        let skillsButton = UIButton(type: .system)
        skillsButton.setTitle("General Info", for: .normal)
        skillsButton.setTitleColor(.white, for: .normal)
        skillsButton.backgroundColor = .systemBlue
        skillsButton.layer.cornerRadius = 10
        skillsButton.addTarget(self, action: #selector(showSkills), for: .touchUpInside)
        
        let projectsButton = UIButton(type: .system)
        projectsButton.setTitle("What I Do For Living", for: .normal)
        projectsButton.setTitleColor(.white, for: .normal)
        projectsButton.backgroundColor = .systemBlue
        projectsButton.layer.cornerRadius = 10
        projectsButton.addTarget(self, action: #selector(showProjects), for: .touchUpInside)

        let stackView = UIStackView(arrangedSubviews: [skillsButton, projectsButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            skillsButton.widthAnchor.constraint(equalToConstant: 250),
            skillsButton.heightAnchor.constraint(equalToConstant: 50),
            projectsButton.widthAnchor.constraint(equalToConstant: 250),
            projectsButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    @objc func showSkills() {
        let skillsVC = SkillsViewController()
        navigationController?.pushViewController(skillsVC, animated: true)
    }

    @objc func showProjects() {
        let projectsVC = ProjectsViewController()
        navigationController?.pushViewController(projectsVC, animated: true)
    }
}

class SkillsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "General Info"

        // Image View
        let imageView = UIImageView()
        imageView.image = UIImage(named: "kotya")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false

        // Label
        let label = UILabel()
        label.text = """
        Name: Polina
        Birth Date: May 27, 2003
        Zodiac Sign: Gemini
        Pets: Cat named Vincent
        """
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(imageView)
        view.addSubview(label)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 150),

            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

class ProjectsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "What I Do For Living"

        // Image View
        let imageView = UIImageView()
        imageView.image = UIImage(named: "work")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false

        // Label
        let label = UILabel()
        label.text = """
        My Job: Data Engineer
        My Hobbies: Playing CS2, walking
        Favorite Cat Breed: Sphynx
        Things I Don't Like: Insects
        """
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(imageView)
        view.addSubview(label)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 150),

            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

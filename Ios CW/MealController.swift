//import UIKit
//import Charts
//
//class MealController: UIViewController {
//
//    let protein: UILabel = {
//        let namelabel = UILabel()
//        namelabel.text = ""
//        namelabel.translatesAutoresizingMaskIntoConstraints = false
//        return namelabel
//    }()
//
//    let cabohydrate: UILabel = {
//        let namelabel = UILabel()
//        namelabel.text = ""
//        namelabel.translatesAutoresizingMaskIntoConstraints = false
//        return namelabel
//    }()
//
//    let fat: UILabel = {
//        let namelabel = UILabel()
//        namelabel.text = ""
//        namelabel.translatesAutoresizingMaskIntoConstraints = false
//        return namelabel
//    }()
//
//    let others: UILabel = {
//        let namelabel = UILabel()
//        namelabel.text = ""
//        namelabel.translatesAutoresizingMaskIntoConstraints = false
//        return namelabel
//    }()
//
//    var pieChartView: PieChartView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .white
//
//        // Create a new instance of PieChartView
//        pieChartView = PieChartView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
//
//        // Add the pie chart view as a subview of the main view
//        view.addSubview(pieChartView)
//        view.addSubview(protein)
//        view.addSubview(cabohydrate)
//        view.addSubview(fat)
//        view.addSubview(others)
//
//        // Enable auto layout for the pie chart view
//        pieChartView.translatesAutoresizingMaskIntoConstraints = false
//
//        // Position the pie chart view using auto layout
//        NSLayoutConstraint.activate([
//            pieChartView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
//            pieChartView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            pieChartView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            pieChartView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
//            protein.topAnchor.constraint(equalTo: pieChartView.bottomAnchor),
//            protein.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            protein.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            cabohydrate.topAnchor.constraint(equalTo: protein.bottomAnchor),
//            cabohydrate.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            cabohydrate.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//        ])
//
//        // Customize the appearance of the chart
//        pieChartView.centerText = "Meal Distribution"
//        pieChartView.drawEntryLabelsEnabled = false
//
//        // Create sample data entries for the pie chart
//        let entries = [
//            PieChartDataEntry(value: 30, label: "Protein"),
//            PieChartDataEntry(value: 40, label: "Carbohydrates"),
//            PieChartDataEntry(value: 20, label: "Fat"),
//            PieChartDataEntry(value: 10, label: "Others")
//        ]
//
//        // Create a data set with the entries
//        let dataSet = PieChartDataSet(entries: entries, label: "")
//
//        // Customize the colors of the pie slices
//        dataSet.colors = ChartColorTemplates.material()
//
//        // Create a data object with the data set
//        let data = PieChartData(dataSet: dataSet)
//
//        // Set the data object to the chart view
//        pieChartView.data = data
//        databaseCall()
//    }
//    func databaseCall(){
//        Postservice.shared.fetchAllmeal()
//
//        Postservice.shared.fetchSinglemeal(id: "type") { todoItem in
//            DispatchQueue.main.async {
//                self.protein.text = todoItem?.Protein
//            }
//        }
//        Postservice.shared.fetchSinglemeal(id: "type") { todoItem in
//            DispatchQueue.main.async {
//                self.cabohydrate.text = todoItem?.Carbohydrates
//            }
//        }
//        Postservice.shared.fetchSinglemeal(id: "type") { todoItem in
//            DispatchQueue.main.async {
//                self.fat.text = todoItem?.Fat
//            }
//        }
//        Postservice.shared.fetchSinglemeal(id: "type") { todoItem in
//            DispatchQueue.main.async {
//                self.others.text = todoItem?.Others
//            }
//        }
//    }
//}


import UIKit
import Charts

class MealController: UIViewController {
    let imagecover : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "meal")
        image.translatesAutoresizingMaskIntoConstraints = false
        //image.widthAnchor.constraint(equalToConstant: 350).isActive = true
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        return image
    }()
    let header2: UILabel = {
        let header2 = UILabel()
        header2.text = "Meal"
        header2.translatesAutoresizingMaskIntoConstraints = false
        header2.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        header2.textColor = .blue
        header2.backgroundColor = .white // Set the background color to white
        
        header2.textAlignment = .center // Center the text
        
        // Set rounded upper corners
        header2.layer.cornerRadius = 20
        header2.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        header2.layer.masksToBounds = true
        
        return header2
    }()

    let protein: UILabel = {
        let label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let carbohydrate: UILabel = {
        let label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let fat: UILabel = {
        let label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let others: UILabel = {
        let label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let intro: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.numberOfLines = 0
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    var pieChartView: PieChartView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        // Create a new instance of PieChartView
        pieChartView = PieChartView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))

        // Add the pie chart view as a subview of the main view
        view.addSubview(pieChartView)
        view.addSubview(imagecover)
        view.addSubview(header2)
        view.addSubview(intro)

        // Enable auto layout for the pie chart view
        pieChartView.translatesAutoresizingMaskIntoConstraints = false

        // Position the pie chart view using auto layout
        NSLayoutConstraint.activate([
            imagecover.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imagecover.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imagecover.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header2.topAnchor.constraint(equalTo: imagecover.bottomAnchor, constant: -25),
            header2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            intro.topAnchor.constraint(equalTo: header2.bottomAnchor, constant: 10),
            intro.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            intro.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            pieChartView.topAnchor.constraint(equalTo: intro.bottomAnchor, constant: 10),
            pieChartView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            pieChartView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            pieChartView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

        // Customize the appearance of the chart
        pieChartView.centerText = "Meal Distribution"
        pieChartView.drawEntryLabelsEnabled = false

        // Fetch meal data from the database
        fetchMealData()
    }

    func fetchMealData() {
        Postservice.shared.fetchSinglemeal(id: "type") { [weak self] mealItem in
            DispatchQueue.main.async {
                self?.protein.text = mealItem?.Protein
                self?.carbohydrate.text = mealItem?.Carbohydrates
                self?.fat.text = mealItem?.Fat
                self?.others.text = mealItem?.Others
                self?.intro.text = mealItem?.intro
                self?.updateChartData()
            }
        }
    }

    func updateChartData() {
        guard let proteinValue = Double(protein.text ?? ""),
              let carbohydrateValue = Double(carbohydrate.text ?? ""),
              let fatValue = Double(fat.text ?? ""),
              let othersValue = Double(others.text ?? "") else {
            // No data available
            pieChartView.data = nil
            pieChartView.centerText = "No Chart Data Available"
            return
        }

        // Create data entries for the pie chart
        let entries = [
            PieChartDataEntry(value: proteinValue, label: "Protein"),
            PieChartDataEntry(value: carbohydrateValue, label: "Carbohydrates"),
            PieChartDataEntry(value: fatValue, label: "Fat"),
            PieChartDataEntry(value: othersValue, label: "Others")
        ]

        // Create a data set with the entries
        let dataSet = PieChartDataSet(entries: entries, label: "")

        // Customize the colors of the pie slices
        dataSet.colors = ChartColorTemplates.material()

        // Create a data object with the data set
        let data = PieChartData(dataSet: dataSet)

        // Set the data for the chart view
        pieChartView.data = data
    }

}

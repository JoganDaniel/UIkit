

import UIKit



class Customcell: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cellcontent : [String] = []
    var tableviewrow : Int? = nil
    var displaytext : String = ""
    weak var vc : UIViewController?
    
    let cview : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//        cv.backgroundColor = .systemRed
        return cv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .green
        contentView.addSubview(cview)
        cview.dataSource = self
        cview.delegate  = self
        NSLayoutConstraint.activate([

            cview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cview.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            cview.widthAnchor.constraint(equalTo: contentView.widthAnchor)
        ])
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellcontent.count
    }
    
    func passInstance(_ vc : UIViewController) {
        self.vc = vc
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = cview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .blue
        cell.cellLabel.text = cellcontent[indexPath.row]
        return cell
    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 2
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 40)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        NotificationCenter.default.post(name: Notification.Name("present"), object: nil)
        
        print("tableview cell \(tableviewrow!),collectionview cell \(indexPath.item)\n")
        let vc2 = ViewController2()
        vc2.label1.text = cellcontent[indexPath.row]
        self.vc?.present(vc2, animated: true)
    }
    
}

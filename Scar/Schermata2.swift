//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3


let NotificationKey = "co.seanallen.Side"

struct Cont {
    var image: String
    var title: String
    var descr: String
    var fonte: String
    var link: String
}

struct ins {
    var pod: [Cont]
    var well: [Cont]
    var mov: [Cont]
    var art: [Cont]
    var artists: [Cont]
    var books: [Cont]
}

var structIns = [ins(
    pod:[
        Cont(image: "insight1", title:"How to Build Self Confidence", descr: "CeCe Olisa is a body positivity expert who creates popular plus-size workout videos on her YouTube channel, encouraging women to train because they love their bodies and not because they hate them.", fonte:"CeCe Olisa | TEDxFresnoState", link: "https://www.youtube.com/watch?v=ivNNgdCsY7o"),
        Cont(image: "insight2", title:"Stop hating your body; start living your life", descr: "Taryn Brumfitt is a vary famous body image activist. This talk makes us understand that it is not our body that is wrong but our perspective and the unrealistic standards that surround us.", fonte:"Taryn Brumfitt | TEDxAdelaide", link: "https://www.youtube.com/watch?v=LSMH3WABkwg"), Cont(image: "insight3", title:"Own your face", descr: "Robert Hodge is political advisor and author of the book 'Ugly'. With great humor he speaks of love, life and above all of the imperfection and pain that characterized his personal experience.", fonte:"Robert Hodge | TedxSouthBank", link: "https://www.youtube.com/watch?v=QbxinUJcLGg"), Cont(image: "insight4", title:"My Scar is Sexy: Thrive Talk featuring", descr: "Christina Helena is a writer, speaker and performer. She redefines the stigma behind the trauma with one thought: your scar is the sexiest thing about you.", fonte:"Christina Helena", link: "https://www.youtube.com/watch?v=GrQbEMwhES0&t=68s"), Cont(image: "insight5", title:"Have you hated your body enough today?", descr: "Michelle is the creator of the #ScarredNotScared campaign, a community that teach women to appreciate their bodies and scars. In this talk she tells us that changing the relationship with our body can radically change our life.", fonte:"Michelle Elman | TEDxCoventGardenWomen", link: "https://www.youtube.com/watch?v=d88uXMWSVfU"), Cont(image: "insight6", title:"Yes, my scars do define me", descr: "TGebran is a marketing and advertising student and his biggest dream is to become a writer. He says that our life is like a book of stories but ... have we ever wondered what makes a story beautiful?", fonte:"Gebran Abou Zeid | TEDxNDULouaize", link: "https://www.youtube.com/watch?v=LSMH3WABkwg"), Cont(image: "insight7", title:"Behind the ScarsBehind the Scars", descr: "Sophie Mayanne is a photographer, her unmistakable style is extraordinary in 'Behind The Scars', a project that celebrates scars of all shapes and sizes and the incredible stories behind them.", fonte:"Sophie Mayanne | TEDxLeidenUniversity", link: "https://www.youtube.com/watch?v=_3orJwoshTQ"), Cont(image: "insight8", title:"From Scars to Strength: The Poetry of Recovery", descr: "Bianca is a power-house emcee, poet, digital composer, cultural activist and educator. In this intimate talk she shares her insights on self-awareness, recovery and the importance of training for mental health.", fonte:"Bianca Mikahn | TEDxBoulder", link: "https://www.youtube.com/watch?v=9TPmRcfv3TQ&feature=youtu.be"), Cont(image: "insight9", title:"Who are you, really? The puzzle of personality", descr: "What makes you, you? In this talk Brian Little, a Cambridge research professor, analyzes and redefines the threads of our personalities and suggests ways in which we can transform ourselves.", fonte:"Brian Little", link: "https://www.youtube.com/watch?v=qYvXk_bqlBk"), Cont(image: "insight10", title:"You are not alone in your loneliness", descr: "Jonny is a Canadian author and illustrator. In this talk he says that telling story and being open with our loneliness and fear can help us find comfort and feel less alone.", fonte:"Jonny Sun", link: "https://www.youtube.com/watch?v=gi6rMXu_veE"), Cont(image: "insight11", title:"3 tips to boost your confidence", descr: "We actually have the power to cultivate our own confidence, but where does confidence come from and how can we get more? In this video, there are three easy tips to boost your confidence.", fonte:"TED-Ed", link: "https://www.youtube.com/watch?v=l_NYrWqUR40")],
    well:[
        Cont(image: "insight3", title:"Stop hating your body; start living your life ", descr: "Taryn Brumfitt is a vary famous body image activist. This talk makes us understand that it is not our body that is wrong but our perspective and the unrealistic standards that surround us.", fonte:"f", link: "https://www.youtube.com/watch?v=LSMH3WABkwg"),
        Cont(image: "insight4", title:"t", descr: "esempio Wellbein", fonte:"f", link: "https://www.google.com/?client=safari")],
    mov:[
        Cont(image: "insightP1", title:"My scars: journey to body acceptance", descr: "'My accidental fall into boiling water happened at home, when I was three. I ended up in hospital on life support. Many operations followed….'", fonte:"From Sylvia Mac on mentalhealth.org", link: "https://www.mentalhealth.org.uk/stories/my-scars-journey-body-acceptance"),
        Cont(image: "insightP2", title:"Beyond Skin Deep: How Scars Affect Psychosocial Well-Being", descr: "'…the psychosocial impact of scarring from the treatment of facial skin cancers has been shown to affect the young, old, male and female alike.'", fonte:"From Katie Delach on pennmedicine.org", link: "https://www.pennmedicine.org/news/news-blog/2015/may/beyond-skin-deep-how-scars-aff"), Cont(image: "insightP3", title:"The effects of scars on mind", descr: "'The research suggests a healthy body image and high self-esteem can lead to you feeling good about yourself.'", fonte:"On nourisilmd.co.uk", link: "https://www.nourisilmd.co.uk/effects-of-scars-on-the-mind/"),
        Cont(image: "insightP4", title:"Kintsugi: the art of precious scars", descr: "'By repairing broken ceramics it’s possible to give a new lease of life to pottery that becomes even more refined thanks to its scars.'", fonte:"Stefano Carnazzi on lifegate.com", link: "https://www.lifegate.com/people/lifestyle/kintsugi"), Cont(image: "insightP5", title:"5 ways to build lasting self-esteem", descr: "When our self-esteem is higher, we are also less vulnerable to anxiety; we release less cortisol into our bloodstream when under stress, and it is less likely to linger in our system.", fonte:"Guy Winch on ideas.ted.com", link: "https://ideas.ted.com/5-ways-to-build-lasting-self-esteem/"),
        Cont(image: "insightP6", title:"Learning to Accept (if Not Love) My Scar", descr: "Although “my scar” — and I do feel proprietary about it — has been a part of me for more than three decades, an answer still doesn’t come easily. My first inclination was to pretend I hadn’t heard the question.", fonte:"Steven Petrow on nytimes.com", link: "https://www.nytimes.com/2017/12/15/well/live/scar-surgery-cancer-shame-self.html"), Cont(image: "insightP7", title:"Loving your body, scars and all", descr: "'It is genuinely hard to cope with some scars, but try and remember that the important thing about you is the person you are inside and that you love yourself, scars and all.'", fonte:"Fascia on bodyinharmony.org", link: "https://www.bodyinharmony.org.uk/blog/loving-your-body-scars-and-all"),
        Cont(image: "insightP8", title:"Why we should all embrace a new era of skin positivity", descr: "'Just as the body positivity movement led to diverse shapes and sizes being celebrated, skin positivity has the power to redefine our expectations around our skin'", fonte:"Stylist Beauty Team on stylist.co.uk", link:"https://www.stylist.co.uk/beauty/skin-positivity-adult-acne-problem-skin-spot-treatments-skincare/192307")],
    art:[
        Cont(image: "insight4", title:"Kintsugi: Embrace your imperfections…", descr: "The psychologist Tomás Navarro says that we should face our life with the philosophy of the Japanese masters of Kintsugi: not to hide our pains but to enhance them because they are proof of our strength.", fonte:"Tomás Navarro", link:"https://www.goodreads.com/book/show/39778473-kintsugi?from_search=true&from_srp=true&qid=uMd7LfvEqX&rank=1"),
        Cont(image: "2-.jpg", title:"Scars Like Wings", descr: "This is the story of Ava Gardener, a girl who returns to school a year after a fire has left her seriously disfigured. Fortunately, Ava meets Piper, a guy who makes her feel less alone in that nightmare.", fonte:"Erin Stewart", link: "https://www.goodreads.com/book/show/39353216-scars-like-wings?from_search=true&from_srp=true&qid=24Fz9b7a8g&rank=1"), Cont(image: "2-.jpg", title:"Resilient: How to Grow…", descr: "We need resilience every day and in every situation. In this book, Dr. Rick Hanson shows concrete tips, experiential practices and personal examples on how to develop twelve vital inner strengths connected to the nervous system.", fonte:"Rick Hanson", link: "https://www.goodreads.com/book/show/36025434-resilient?from_search=true&from_srp=true&qid=lnwlyH8xdW&rank=1"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Artistis", fonte:"f", link: "https://www.google.com/?client=safari")],
    artists:[
        Cont(image: "2-.jpg", title:"t", descr: "esempio Artistis", fonte:"f", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Artistis", fonte:"f", link: "https://www.google.com/?client=safari")],
    books:[
        Cont(image: "insightP1", title:"Sharing Your Story Frees You", descr: "Talking about your experience will help you and others. Break the silence. This is the time to turn your story into a message.", fonte:"Unshakable Self-Confidence", link: "https://open.spotify.com/episode/2NhiV5ALQUnTouSjCn7dwe?si=QLESVlolQtuISOYw7AmSbA"),
        Cont(image: "insightP2", title:"5 Ways to Feel Better About Your Body", descr: "In this episode you will listen to 5 strategies to feel better about yourself. These strategies will help you have a positive image of body without having to change it!", fonte:"Eat with Confidence", link: "https://open.spotify.com/episode/03pJo4gG9DYVbBdyCIIk9P?si=G8oaXQkYTs-09AR_c4oGdQ"), Cont(image: "insightP3", title:"Use Your Wardrobe to Improve Your Body Image", descr: "In this episode, the fashion expert Reachel will give a different perspective on the image of the body and the importance of clothes and style to feel comfortable and always creative.", fonte:"Eat with Confidence", link: "https://open.spotify.com/episode/2tfdATr70GnF6WVUdQsuSA?si=n5A2yQD5RF-2BVI5hVP_ZQ"),
        Cont(image: "insightP4", title:"Practice Positive Self-Talk", descr: "In this episode you will discover the importance of positive self-talk. The first step to feel good is to speak positively with yourself, set goals and achieve them!", fonte:"Eat with Confidence", link: "https://open.spotify.com/episode/3T1EDWEVQZGzPmnFhg6hm7?si=EVnXpAT3TdCxjXeLPik2WA"), Cont(image: "insightP5", title:"on’t be responsible - Live life your way", descr: "When our self-esteem is higher, we are also less vulnerable to anxiety; we release less cortisol into our bloodstream when under stress, and it is less likely to linger in our system.", fonte:"The Dharma Life Podcast", link: "https://open.spotify.com/episode/5aenNyzrxJSNMj82mQi33E?si=gEtT8PHzRgqtRSJY8mGSHA"),
        Cont(image: "insightP6", title:"8 Minute Motivation: Handling Criticism", descr: "Here are some tips to stop worrying about what people think of you. Stop being afraid of negative comments, criticisms and judgment.", fonte:"Natalia Benson", link: "https://open.spotify.com/episode/5wnfsFr2Mb8d45ebeHTt8q?si=4-_712XhTuqWllCu3Mq4Xg"), Cont(image: "insightP7", title:"Self Love Guided Meditation", descr: "In this episode you will dedicate yourself to guided meditation on self-love. Now take some time for yourself, breathe and relax you deserve it.", fonte:"Love Yourself Healthy", link: "https://open.spotify.com/episode/1ExTSehbhCx0asZLF1g60i?si=XGb6ECfnQxecP6EMufuQ1Q"),
        Cont(image: "insightP8", title:"From Stretch Marks To Glitter Stripes", descr: "Allison Kimmey's message has gone viral and her mission is to help all moms to love their body more. Listen to her story and trust  her special tips!", fonte:"Plus Mommy Podcast", link:"https://open.spotify.com/episode/2dW6CQgkCtLPbC80hgkW4u?si=g8mfJ5DJTJOfeXFHR_qsDA"), Cont(image: "insightP9", title:"10 Ways to Develop Self Confidence", descr: "We all often feel judged and are negatively influenced by other people's opinion. In this episode Abby will give you 10 ways to develop self-esteem and self-confidence.", fonte:"Gen Z Girl", link: "https://open.spotify.com/episode/1nq5YjNDbq84KZeHu8WQwo?si=f395OhhrSp6Ixzr-Q9YOdA"),
        Cont(image: "insightP10", title:"How To Plant The Seeds Of Confidence", descr: "The first step to do to feel better about yourself and gain self-confidence and self-esteem is: get out of your comfort zone! Check out this episode and find out how to plant seeds of confidence.", fonte:"Confidence & Self Esteem Podcast", link: "https://open.spotify.com/episode/50DKtkyhsjEKE2JpJ04Wnr?si=o0b_AjWITQKQmtMupCPcJQ")]
)]

class Schermata2: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    static var insights: [String] = ["","","","","",""]
    var contenuto: [Cont] = []
    
    let light = Notification.Name(rawValue: NotificationKey)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var r1: UIImageView!
    @IBOutlet weak var r2: UIImageView!
    @IBOutlet weak var r3: UIImageView!
    @IBOutlet weak var r4: UIImageView!
    @IBOutlet weak var r5: UIImageView!
    @IBOutlet weak var r6: UIImageView!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var scroll: UIScrollView!
    
    var imgButt: String = ""
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contenuto.count
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "ins", for: indexPath) as! InightsCollection
        cell.image.image = UIImage(named: contenuto[indexPath.row].image)
        cell.title.text = contenuto[indexPath.row].title
        cell.label.text = contenuto[indexPath.row].descr
        cell.fonte.text = contenuto[indexPath.row].fonte
        let tap = MyTap(target: self, action: #selector(self.goLink(sender:)))
        tap.link = contenuto[indexPath.row].link
        cell.button.isUserInteractionEnabled = true
        cell.button.addGestureRecognizer(tap)
        let image = UIImage(named: imgButt)
        cell.button.setImage(image, for: .normal)
        return cell
    }
    
    @objc func goLink(sender : MyTap) {
        if let url = NSURL(string: sender.link){
            UIApplication.shared.open(url as URL)
        }
     }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        caricaInfo()

        if(Schermata2.insights[0] != ""){
           if(Schermata2.insights[0] == "TEDx"){
                contenuto = structIns[0].pod
                self.imgButt = "SeeMore"
            }
            if(Schermata2.insights[0] == "Movies&TVShows"){
                contenuto = structIns[0].well
                self.imgButt = "SeeMoreMovie"
            }
            if(Schermata2.insights[0] == "Articles"){
                contenuto = structIns[0].mov
                self.imgButt = "SeeMoreArticle"
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].art
                self.imgButt = "SeeMoreBooks"
            }
            if(Schermata2.insights[0] == "Inspiring People"){
                contenuto = structIns[0].artists
                self.imgButt = "SeeMoreInspiringPeople"
            }
            if(Schermata2.insights[0] == "Podcasts"){
                contenuto = structIns[0].books
                self.imgButt = "SeeMorePodcast"
            }
           
            var somma: CGFloat = 0
            b1.setTitle(Schermata2.insights[0], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[0].count))
            b1.frame.size.width = 15 * CGFloat(Schermata2.insights[0].count)
            r1.image = UIImage(named: Schermata2.insights[0])
                
            b2.setTitle(Schermata2.insights[1], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[1].count))
            b2.frame.size.width = 15 * CGFloat(Schermata2.insights[1].count)
            r2.image = UIImage(named: Schermata2.insights[1])
            r2.isHidden = true

            b3.setTitle(Schermata2.insights[2], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[2].count))
            b3.frame.size.width = 15 * CGFloat(Schermata2.insights[2].count)
            r3.image = UIImage(named: Schermata2.insights[2])
            r3.isHidden = true

            b4.setTitle(Schermata2.insights[3], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[3].count))
            b4.frame.size.width = 15 * CGFloat(Schermata2.insights[3].count)
            r4.image = UIImage(named: Schermata2.insights[3])
            r4.isHidden = true
            
            b5.setTitle(Schermata2.insights[4], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[4].count))
            b5.frame.size.width = 15 * CGFloat(Schermata2.insights[4].count)
            r5.image = UIImage(named: Schermata2.insights[4])
            r5.isHidden = true

            b6.setTitle(Schermata2.insights[5], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[5].count))
            b6.frame.size.width = 15 * CGFloat(Schermata2.insights[5].count)
            r6.image = UIImage(named: Schermata2.insights[5])
            r6.isHidden = true
            
            scroll.contentSize = CGSize(width: somma, height: 10)
            
            b1.isSelected = true
            b2.isSelected = false
            b3.isSelected = false
            b4.isSelected = false
            b5.isSelected = false
            b6.isSelected = false
            myCollectionView.reloadData()
        }
        createObservers()
    }
    
    func createObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(Schermata2.buttonName(notification:)), name: light, object: nil)
    }
    
    func caricaInfo(){
        var db: OpaquePointer?
             
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
             
        //Recupera Valore
        var stmt: OpaquePointer?
        let queryString = "SELECT * FROM Insights"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
        let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        while(sqlite3_step(stmt) == SQLITE_ROW){
            Schermata2.insights[0] = String(cString: sqlite3_column_text(stmt, 1))
            Schermata2.insights[1] = String(cString: sqlite3_column_text(stmt, 2))
            Schermata2.insights[2] = String(cString: sqlite3_column_text(stmt, 3))
            Schermata2.insights[3] = String(cString: sqlite3_column_text(stmt, 4))
            Schermata2.insights[4] = String(cString: sqlite3_column_text(stmt, 5))
            Schermata2.insights[5] = String(cString: sqlite3_column_text(stmt, 6))
        }
    }
    
    @objc func buttonName(notification: NSNotification) {
        caricaInfo()
        
        var somma: CGFloat = 0
        b1.setTitle(Schermata2.insights[0], for: .normal)
        somma = somma + (15 * CGFloat(Schermata2.insights[0].count))
        b1.frame.size.width = 15 * CGFloat(Schermata2.insights[0].count)
        r1.image = UIImage(named: Schermata2.insights[0])
        r1.isHidden = false
                     
        b2.setTitle(Schermata2.insights[1], for: .normal)
        somma = somma + (15 * CGFloat(Schermata2.insights[1].count))
        b2.frame.size.width = 15 * CGFloat(Schermata2.insights[1].count)
        r2.image = UIImage(named: Schermata2.insights[1])
        r2.isHidden = true

        b3.setTitle(Schermata2.insights[2], for: .normal)
        somma = somma + (15 * CGFloat(Schermata2.insights[2].count))
        b3.frame.size.width = 15 * CGFloat(Schermata2.insights[2].count)
        r3.image = UIImage(named: Schermata2.insights[2])
        r3.isHidden = true

        b4.setTitle(Schermata2.insights[3], for: .normal)
        somma = somma + (15 * CGFloat(Schermata2.insights[3].count))
        b4.frame.size.width = 15 * CGFloat(Schermata2.insights[3].count)
        r4.image = UIImage(named: Schermata2.insights[3])
        r4.isHidden = true
                 
        b5.setTitle(Schermata2.insights[4], for: .normal)
        somma = somma + (15 * CGFloat(Schermata2.insights[4].count))
        b5.frame.size.width = 15 * CGFloat(Schermata2.insights[4].count)
        r5.image = UIImage(named: Schermata2.insights[4])
        r5.isHidden = true

        b6.setTitle(Schermata2.insights[5], for: .normal)
        somma = somma + (15 * CGFloat(Schermata2.insights[5].count))
        b6.frame.size.width = 15 * CGFloat(Schermata2.insights[5].count)
        r6.image = UIImage(named: Schermata2.insights[5])
        r6.isHidden = true
                 
        scroll.contentSize = CGSize(width: somma, height: 10)
        
        if(Schermata2.insights[0] != ""){
            if(Schermata2.insights[0] == "TEDx"){
                contenuto = structIns[0].pod
                self.imgButt = "SeeMore"
            }
            if(Schermata2.insights[0] == "Movies&TVShows"){
                contenuto = structIns[0].well
                self.imgButt = "SeeMoreMovie"
            }
            if(Schermata2.insights[0] == "Articles"){
                contenuto = structIns[0].mov
                self.imgButt = "SeeMoreArticle"
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].art
                self.imgButt = "SeeMoreBooks"
            }
            if(Schermata2.insights[0] == "Inspiring People"){
                contenuto = structIns[0].artists
                self.imgButt = "SeeMoreInspiringPeople"
            }
            if(Schermata2.insights[0] == "Podcasts"){
                contenuto = structIns[0].books
                self.imgButt = "SeeMorePodcast"
            }
           
            b1.isSelected = true
            b2.isSelected = false
            b3.isSelected = false
            b4.isSelected = false
            b5.isSelected = false
            b6.isSelected = false
            myCollectionView.reloadData()
        }
    }

    @IBAction func setTable(_ sender: UIButton) {
        if !sender.isSelected {
            b1.isSelected = false
            b2.isSelected = false
            b3.isSelected = false
            b4.isSelected = false
            b5.isSelected = false
            b6.isSelected = false
            sender.isSelected = true
        }
        
        if(sender.titleLabel?.text == "TEDx"){
            contenuto = structIns[0].pod
            self.imgButt = "SeeMore"
        }
        if(sender.titleLabel?.text == "Movies&TVShows"){
            contenuto = structIns[0].well
            self.imgButt = "SeeMoreMovie"
        }
        if(sender.titleLabel?.text == "Articles"){
            contenuto = structIns[0].mov
            self.imgButt = "SeeMoreArticle"
        }
        if(sender.titleLabel?.text == "Books"){
            contenuto = structIns[0].art
            self.imgButt = "SeeMoreBooks"
        }
        if(sender.titleLabel?.text == "Inspiring People"){
            contenuto = structIns[0].artists
            self.imgButt = "SeeMoreInspiringPeople"
        }
        if(sender.titleLabel?.text == "Podcasts"){
            contenuto = structIns[0].books
            self.imgButt = "SeeMorePodcast"
        }
        
        if(b1.isSelected == true){
            r1.isHidden = false
            r2.isHidden = true
            r3.isHidden = true
            r4.isHidden = true
            r5.isHidden = true
            r6.isHidden = true
        } else if(b2.isSelected == true){
            r1.isHidden = true
            r2.isHidden = false
            r3.isHidden = true
            r4.isHidden = true
            r5.isHidden = true
            r6.isHidden = true
        }else if(b3.isSelected == true){
            r1.isHidden = true
            r2.isHidden = true
            r3.isHidden = false
            r4.isHidden = true
            r5.isHidden = true
            r6.isHidden = true
        }else if(b4.isSelected == true){
            r1.isHidden = true
            r2.isHidden = true
            r3.isHidden = true
            r4.isHidden = false
            r5.isHidden = true
            r6.isHidden = true
        }else if(b5.isSelected == true){
            r1.isHidden = true
            r2.isHidden = true
            r3.isHidden = true
            r4.isHidden = true
            r5.isHidden = false
            r6.isHidden = true
        }else if(b6.isSelected == true){
            r1.isHidden = true
            r2.isHidden = true
            r3.isHidden = true
            r4.isHidden = true
            r5.isHidden = true
            r6.isHidden = false
        }
        
        myCollectionView.reloadData()
    }
}


class MyTap: UITapGestureRecognizer {
    var link = String()
}


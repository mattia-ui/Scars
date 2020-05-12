//
//  ViewControllerInitial.swift
//  Scar
//
//  Created by Mattia Cardone on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

struct ContenutoStruct {
    var contenuto: String
    var titolo: String
    var righe: Int
}

struct ActivityStruct {
    var attivita1: [ContenutoStruct]
    var attivita2: [ContenutoStruct]
    var attivita3: [ContenutoStruct]
    var attivita4: [ContenutoStruct]
    var attivita5: [ContenutoStruct]
    var attivita6: [ContenutoStruct]
    var attivita7: [ContenutoStruct]
    var attivita8: [ContenutoStruct]
    var attivita9: [ContenutoStruct]
}

var dati = [ActivityStruct(
    attivita1:[
        ContenutoStruct(contenuto: "Doing mirror work is one of the most loving gifts you can give yourself. Remember that the more you use your mirror for complimenting and supporting yourself, the deeper and more pleasant your relationship with yourself will become.\n \nHere are three simple steps for mastering your mirror work in practice!" , titolo: "Your mirror is your friend", righe: 11), ContenutoStruct(contenuto:"Using a handheld mirror allows you to get closer to the most intimate part of yourself. Just make sure you're in a place where nobody can bother you!" , titolo: "1. Get a handheld mirror", righe: 17), ContenutoStruct(contenuto: "Start by making eye contact with yourself in the mirror and don't worry if at first this may seem a little uncomfortable.", titolo: "2. Make eye contact", righe: 23), ContenutoStruct(contenuto: "Now begin to say some of your favorite affirmations out loud or just start a conversation with yourself. It’s so important to give yourself little positive messages, say anything that makes you feel really good!", titolo: "3. Give yourself positive messages out loud",righe: 30)],
    attivita2:
        [ContenutoStruct(contenuto: "Taking some time and writing a diary could help you improve your body image. Writing activities could be used as a form of therapy for people who have self-esteem and body issues.\nReady to get started? Here are some small tips that will help you along the way:", titolo: "The importance of writing", righe: 10),
        ContenutoStruct(contenuto: "Everyone has his own times: If you are an early riser, you can update your diary in the morning but If you are a night owl, choose to update it in the evening. ", titolo: "1. Choose a suitable time for you. ", righe: 17),
        ContenutoStruct(contenuto: "Remember that you can change yourself but not others! Don’t think about what other people might say or think. They don’t matter at all. just think about what YOU feel.", titolo: "2. Stop listening to negativity", righe: 24),
        ContenutoStruct(contenuto: "Your body deserves respect, attention and love. Look yourself in the mirror, appreciate all the perfect things about you and write them in your diary.", titolo: "3. Write in a positive way about your body", righe: 31),
        ContenutoStruct(contenuto: "To understand yourself better you are going to keep track of your overall progress. A reliable way in which you can do this is by rating how you feel EACH day.", titolo: "4. Rate how you feel each day", righe: 38),
        ContenutoStruct(contenuto: "Probably after some time your passion for writing may wane, but don't worry. Remember that: consistency is the key. A useful way to not give up is to reward yourself for each writing session you end.", titolo: "5. Never give up!", righe: 45)],
    attivita3:
        [ContenutoStruct(contenuto: "If you are struggling with your body image issues or you are trying to increase your self-esteem, being inspired by someone who has had an experience similar to yours can be just the kick start you need to feel better about yourself.\n\nAn easy and fun way to be inspired by others is to collect quotes or story from your favorite celebrity or Instagram influencer, but also from authors and regular people.", titolo: "Inspiration matters", righe: 13),
        ContenutoStruct(contenuto: "• Save your favorite quotes or stories for your next low self-esteem day \n• Write them on colored sticky notes\n• Share them with your friends\n• Read them out loud when you look in the mirror\n• Put them into practice.", titolo: "Let's see together how to get inspired", righe: 21)],
    attivita4:
        [ContenutoStruct(contenuto: "Try to walk for at least 30 minutes. If it's too difficult for you, don't worry. Take small regular 10-minute walks three times a day and then gradually switch to longer sessions.\n\nPeople who exercise regularly tend to do so because it gives them a great sense of well-being, they feel more relaxed and positive about themselves and their lives.\n\nWalking requires minimal equipment, can be done at any time of day and can be performed at your own pace.. so no excuses!", titolo: "Walking is important", righe: 14)],
    attivita5:
        [ContenutoStruct(contenuto:"Meditation is a method of knowing yourself deeply, it can be used as a simple technique of relax or as a tool for the growth of awareness, spirituality, or generally as s form of self-care.\n\nYou will find below some small tips that will help you along the way: Ready to get started?", titolo: "Look for your mantra", righe: 11),
        ContenutoStruct(contenuto: "Concentrate on breathing and free your mind of unnecessary thoughts.", titolo: "1. Learn to meditate on your breathing", righe: 15),
        ContenutoStruct(contenuto: "Try to be aware of the posture you adopt, focus all your attention on your body.", titolo: "2. Check your posture", righe: 20),
        ContenutoStruct(contenuto: "The eyes must not be open, to avoid distractions, but not closed either, to avoid falling asleep.", titolo: " 3. Squint your eyes", righe: 25),
        ContenutoStruct(contenuto: "To increase your concentration on the breath you can use a mantra, it is a short sentence, which you can repeat over and over again.", titolo: " 4. Use a mantra", righe: 31),
        ContenutoStruct(contenuto: "It is important to dedicate enough time to this practice. The ideal would be two meditation sessions, the first in the morning and the second in the evening. Meditation is not an occasional practice, it is very important to meditate every day, even for just a few minutes.", titolo: "5. Find your ideal time.", righe: 39)],
    attivita6:
        [ContenutoStruct(contenuto: "\nRegular exercise can have a deeply positive impact on your daily life. But don’t worry, you don’t have to torture yourself with difficult exercises to get what you want. You can build confidence and do your exercises on your own terms and on your own times.\nLet's see together some exercises you can do:", titolo: "What are the exercises that affect your mood in a positive way?", righe: 11),
        ContenutoStruct(contenuto: "Yoga develops inner awareness by focusing your attention on what you are experiencing in the present moment without judging yourself.", titolo: "1. Yoga", righe: 17),
        ContenutoStruct(contenuto: "Pilates is a training method that teaches you to become aware of your body, correct your posture and improve the precision of your movements", titolo: "2. Pilates", righe: 24),
        ContenutoStruct(contenuto: "Tai Chi is a discipline of ancient origins, close to the world of martial arts, useful for strengthening the character, the elasticity of the muscles and the improvement of posture.", titolo: "3. Tai Chi", righe: 31)],
    attivita7:
        [ContenutoStruct(contenuto: "Do you remember when was the last time you smiled? Smiling is good for health and generates positive reactions for your body.\n\nAnd if you think you have no reason to laugh, invent it, look around for something funny like a good comedy or a joke! Your whole body will thank you!\n\nYou will find below 3 reasons why smiling is good for your health!\n\n- Smiling improves productivity at work, a smile can create bonds in the team, reduce the level of stress and help you solve problems with more lucidity.\n\n- Smiling makes you creative, the more relaxed you are, the more inclined your mind is to create.\n\n- Smiling makes you sleep better, smiling in the evening increases the production of melatonin which helps you sleep.\n\n...so smile without moderation!", titolo: "There is always a reason to smile", righe: 21)],
    attivita8:
        [ContenutoStruct(contenuto: "Sunlight brings mental benefits, improves mood and removes stress.\n\nThe benefits are many but .. How to expose yourself to sunlight while staying at home?\n\nIf you have a balcony organize yourself with a comfortable chair and try to spend time outdoors every day.\n\nAnd what if you don't have a balcony? Try to identify the times of day when the light enters directly from your windows. Open it and sit in favor of the sunlight.\nUse every moment of pause you have and expose yourself to sunlight every day.", titolo: "What does sunlight do to your body?", righe: 17)],
    attivita9:
        [ContenutoStruct(contenuto: "Your mind is the only useful and essential tool you have to manage and plan your thoughts, aspirations and goals. If you plan your goals it will be much easier to shape the life you want and get the results you want to achieve.\n\nLet's see together how to manage the difficulties and reach the goal:", titolo: "Plan, manage and reach", righe: 11),
         ContenutoStruct(contenuto: "Classify them according to the importance they have for you and understand the steps you need to take in order to achieve them.", titolo: "1. Make a list of all the goals you want to achieve", righe: 17),
         ContenutoStruct(contenuto: "Doing this can reduce stress and make you happier and more satisfied.\nSet deadlines, setting deadlines will increase your motivation and give you feedback on what works and what doesn’t. Give yourself a reward, when you reach a goal don't forget to reward yourself, this will make you happier and more motivated to take the next step.", titolo: "2. Divide your biggest goals into daily steps", righe: 27)]
)]

class ViewControllerInitial: UIViewController, UIScrollViewDelegate {

    
    var id1: Int!
    var attivita: [ContenutoStruct] = []
    var slides:[Slide] = []
    var sfondi: [String] = ["background","background2","background3","background4","background5","background6","background7","background8","background9"]
    var sfondiNav: [String] = ["nav1","nav2","nav3","nav4","nav5","nav6","nav7","nav8","nav9"]
    @IBOutlet weak var scrollView: UIScrollView!{
        didSet{ scrollView.delegate = self }
    }
        
    
    @IBOutlet weak var imageNav: UIImageView!

    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "collectionInitial")  as! Schermata1
    self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func done(_ sender: Any) {
        var db: OpaquePointer?

        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
               
        //Update Valore
        var stmt: OpaquePointer?
        var attivita = ""
        switch id1 {
            case 0: attivita = "c1"
            case 1: attivita = "c2"
            case 2: attivita = "c3"
            case 3: attivita = "c4"
            case 4: attivita = "c5"
            case 5: attivita = "c6"
            case 6: attivita = "c7"
            case 7: attivita = "c8"
            default: attivita = "c9"
        }
        let queryString = "UPDATE InfoSchermata1 SET \(attivita) = 'checked';"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
           
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "collectionInitial")  as! Schermata1
        self.navigationController?.pushViewController(secondVC, animated: true)
       }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageNav.image = UIImage(named: sfondiNav[id1])
        slides = createSlides()
        setupSlideScrollView(slides: slides)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
    func createSlides() -> [Slide] {
        switch id1 {
            case 0: attivita = dati[0].attivita1
            case 1: attivita = dati[0].attivita2
            case 2: attivita = dati[0].attivita3
            case 3: attivita = dati[0].attivita4
            case 4: attivita = dati[0].attivita5
            case 5: attivita = dati[0].attivita6
            case 6: attivita = dati[0].attivita7
            case 7: attivita = dati[0].attivita8
            default: attivita = dati[0].attivita9
        }
            
        for i in 0 ..< attivita.count{
            let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
            slide2.labelDesc.font = UIFont(name: "CeraPro-Bold", size: 17.0)
            slide2.labelTitle.text = attivita[i].titolo
            slide2.labelDesc.font = UIFont(name: "CeraPro-Light", size: 17.0)
            slide2.labelDesc.text = attivita[i].contenuto
            slides.append(slide2)
        }
        return slides
    }
        
        
    func setupSlideScrollView(slides : [Slide]) {
        let imageViewBackground = UIImageView()
        imageViewBackground.image = UIImage(named: sfondi[id1])
        imageViewBackground.frame = CGRect(x: 0, y: 0, width: imageViewBackground.image?.size.width ?? 0, height: imageViewBackground.image?.size.height ?? 0)
        scrollView.addSubview(imageViewBackground)
            
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.isPagingEnabled = true
            
        var numberL = 0
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: 0, y: 30 * CGFloat(numberL), width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
            numberL = attivita[i].righe
        }
            
        let image = UIImage(named: "button-1") as UIImage?
        let button = UIButton(type: UIButton.ButtonType.custom) as UIButton
        button.frame = CGRect(x: 84, y: 30 *  CGFloat(numberL) + 50, width: 244, height: 55)
        button.setImage(image, for: .normal)
        button.addTarget(self, action: "done:", for: UIControl.Event.touchUpInside)
        scrollView.addSubview(button)
        
        scrollView.contentSize = CGSize(width: view.frame.width , height: 30 * CGFloat(numberL) + 150)
    }
}

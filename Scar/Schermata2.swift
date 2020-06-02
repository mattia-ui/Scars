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
        Cont(image: "insight2", title:"Stop hating your body; start living your life", descr: "Taryn Brumfitt is a vary famous body image activist. This talk makes us understand that it is not our body that is wrong but our perspective and the unrealistic standards that surround us.", fonte:"Taryn Brumfitt | TEDxAdelaide", link: "https://www.youtube.com/watch?v=LSMH3WABkwg"), Cont(image: "insight3", title:"Own your face", descr: "Robert Hodge is political advisor and author of the book 'Ugly'. With great humor he speaks of love, life and above all of the imperfection and pain that characterized his personal experience.", fonte:"Robert Hodge | TedxSouthBank", link: "https://www.youtube.com/watch?v=QbxinUJcLGg"), Cont(image: "insight4", title:"Dear Unresolved Soul, It’s Not Death You Fear, It's Life", descr: "Christina is a writer, speaker and performer. At nineteen years old, she became one of the youngest Pancreatic Cancer survivors in the world. She has faced death. More than once. And here is what she learned.", fonte:"Christina Helena", link: "https://www.youtube.com/watch?v=1c4iavIeKp4"), Cont(image: "insight5", title:"Have you hated your body enough today?", descr: "Michelle is the creator of the #ScarredNotScared campaign, a community that teach women to appreciate their bodies and scars. In this talk she tells us that changing the relationship with our body can radically change our life.", fonte:"Michelle Elman | TEDxCoventGardenWomen", link: "https://www.youtube.com/watch?v=d88uXMWSVfU"), Cont(image: "insight6", title:"Yes, my scars do define me", descr: "TGebran is a marketing and advertising student and his biggest dream is to become a writer. He says that our life is like a book of stories but ... have we ever wondered what makes a story beautiful?", fonte:"Gebran Abou Zeid | TEDxNDULouaize", link: "https://www.youtube.com/watch?v=LSMH3WABkwg"), Cont(image: "insight7", title:"Behind the ScarsBehind the Scars", descr: "Sophie Mayanne is a photographer, her unmistakable style is extraordinary in 'Behind The Scars', a project that celebrates scars of all shapes and sizes and the incredible stories behind them.", fonte:"Sophie Mayanne | TEDxLeidenUniversity", link: "https://www.youtube.com/watch?v=_3orJwoshTQ"), Cont(image: "insight8", title:"From Scars to Strength: The Poetry of Recovery", descr: "Bianca is a power-house emcee, poet, digital composer, cultural activist and educator. In this intimate talk she shares her insights on self-awareness, recovery and the importance of training for mental health.", fonte:"Bianca Mikahn | TEDxBoulder", link: "https://www.youtube.com/watch?v=9TPmRcfv3TQ&feature=youtu.be"), Cont(image: "insight9", title:"Who are you, really? The puzzle of personality", descr: "What makes you, you? In this talk Brian Little, a Cambridge research professor, analyzes and redefines the threads of our personalities and suggests ways in which we can transform ourselves.", fonte:"Brian Little", link: "https://www.youtube.com/watch?v=qYvXk_bqlBk"), Cont(image: "insight10", title:"You are not alone in your loneliness", descr: "Jonny is a Canadian author and illustrator. In this talk he says that telling story and being open with our loneliness and fear can help us find comfort and feel less alone.", fonte:"Jonny Sun", link: "https://www.youtube.com/watch?v=gi6rMXu_veE"), Cont(image: "insight11", title:"3 tips to boost your confidence", descr: "We actually have the power to cultivate our own confidence, but where does confidence come from and how can we get more? In this video, there are three easy tips to boost your confidence.", fonte:"TED-Ed", link: "https://www.youtube.com/watch?v=l_NYrWqUR40")],
    well:[
        Cont(image: "insight3", title:"The Theory Of Everything", descr: "It explores the most significant moments in Stephen Hawking’s life and elevates an atmosphere pleasing to its viewer, narrating every event of the plot, be it positive or negative.", fonte:"", link: "https://www.youtube.com/watch?v=Salz7uGp72c"), Cont(image: "insight3", title:"\n\nShallow Hal", descr: "A shallow man falls in love with a 300-pound woman because of her inner beauty. One day, the self-help guru Tony Robbins hypnotizes him into recognizing only the inner beauty of women.", fonte:"", link: "https://www.youtube.com/watch?v=ZZWvgEOoV3U"),
        Cont(image: "insight4", title:"Orange Is The New Black", descr: "This show has one of the most diverse casts on TV, with different ethnicities and sizes. Every character is uniquely themselves, portraying every different kind of body type.", fonte:"", link: "https://www.youtube.com/watch?v=vY0qzXi5oJg"), Cont(image: "insight4", title:"\n\nThe Shape Of Water", descr: "This show has one of the most diverse casts on TV, with different ethnicities and sizes. Every character is uniquely themselves, portraying every different kind of body type.", fonte:"", link: "https://www.youtube.com/watch?v=XFYWazblaUA"),
        Cont(image: "insight3", title:"Unbreakable Kimmy Schmidt", descr: "Titus is overweight, black, and gay, and he never feels lesser for it. Kimmy is also body-positive, she doesn't see size or imperfections. We could all afford to be that way!", fonte:"", link: "https://www.youtube.com/watch?v=Hl4bOuGNMwo"), Cont(image: "insight4", title:"\n\n POSE", descr: "American drama television series about New York City's African-American and Latino LGBTQ and gender-nonconforming ballroom culture scene in the 1980s. Is this enough?", fonte:"", link: "https://www.youtube.com/watch?v=_t4YuPXdLZw"),
        Cont(image: "insight4", title:"\n\nBorder", descr: "Penelope is a modern romantic tale about a young aristocratic heiress born under a curse that can only be broken when she finds true love with 'one who will accept her as one of their own.'", fonte:"", link: "https://www.youtube.com/watch?v=QMs28A1s1OA"),
        Cont(image: "insight4", title:"\n\nGlow", descr: "They were a real group of women wrestlers, made up of women in every different race and size. Body positivity means accepting there are different bodies and that they are all beautiful!", fonte:"", link: "https://www.youtube.com/watch?v=wnKEoXbBTEw"), Cont(image: "insight4", title:"\n\nHairspray", descr: "Ricki Lake, aka Tracy Turnblad, has always been a body positive icon, in Hairspray she fights the shocking segregation enforced by her favorite TV show after she wins a chance to dance on it.", fonte:"", link: "https://www.youtube.com/watch?v=SUoG7mqCixI"),
        Cont(image: "insight4", title:"\n\nUnorthodox", descr: "Esty is living unhappily in an arranged marriage and an ultra-Orthodox community, she runs away to discover life outside her community and rejecting all of the beliefs she grew up with.", fonte:"", link: "https://www.youtube.com/watch?v=-zVhRId0BTw")],
    mov:[
        Cont(image: "InsightA6", title:"My scars: journey to body acceptance", descr: "'My accidental fall into boiling water happened at home, when I was three. I ended up in hospital on life support. Many operations followed….'", fonte:"From Sylvia Mac on mentalhealth.org", link: "https://www.mentalhealth.org.uk/stories/my-scars-journey-body-acceptance"),
        Cont(image: "InsightA1", title:"How Scars Affect Psychosocial Well-Being", descr: "'…the psychosocial impact of scarring from the treatment of facial skin cancers has been shown to affect the young, old, male and female alike.'", fonte:"From Katie Delach on pennmedicine.org", link: "https://www.pennmedicine.org/news/news-blog/2015/may/beyond-skin-deep-how-scars-aff"),
        Cont(image: "InsightA2", title:"Kintsugi: the art of precious scars", descr: "'By repairing broken ceramics it’s possible to give a new lease of life to pottery that becomes even more refined thanks to its scars.'", fonte:"Stefano Carnazzi on lifegate.com", link: "https://www.lifegate.com/people/lifestyle/kintsugi"), Cont(image: "InsightA4", title:"5 ways to build lasting self-esteem", descr: "When our self-esteem is higher, we are also less vulnerable to anxiety; we release less cortisol into our bloodstream when under stress, and it is less likely to linger in our system.", fonte:"Guy Winch on ideas.ted.com", link: "https://ideas.ted.com/5-ways-to-build-lasting-self-esteem/"),
        Cont(image: "InsightA5", title:"Learning to Accept (if Not Love) My Scar", descr: "Although “my scar” — and I do feel proprietary about it — has been a part of me for more than three decades, an answer still doesn’t come easily. My first inclination was to pretend I hadn’t heard the question.", fonte:"Steven Petrow on nytimes.com", link: "https://www.nytimes.com/2017/12/15/well/live/scar-surgery-cancer-shame-self.html"), Cont(image: "InsightA8", title:"Loving your body, scars and all", descr: "'It is genuinely hard to cope with some scars, but try and remember that the important thing about you is the person you are inside and that you love yourself, scars and all.'", fonte:"Fascia on bodyinharmony.org", link: "https://www.bodyinharmony.org.uk/blog/loving-your-body-scars-and-all"), Cont(image: "InsightA7", title:"Why we should all embrace a new era of skin positivity", descr: "'Just as the body positivity movement led to diverse shapes and sizes being celebrated, skin positivity has the power to redefine our expectations around our skin'", fonte:"Stylist Beauty Team on stylist.co.uk", link: "https://www.stylist.co.uk/beauty/skin-positivity-adult-acne-problem-skin-spot-treatments-skincare/192307")],
    art:[
        Cont(image: "InsightB1", title:"Kintsugi: Embrace your imperfections…", descr: "The psychologist Tomás Navarro says that we should face our life with the philosophy of the Japanese masters of Kintsugi: not to hide our pains but to enhance them because they are proof of our strength.", fonte:"Tomás Navarro", link:"https://www.goodreads.com/book/show/39778473-kintsugi?from_search=true&from_srp=true&qid=uMd7LfvEqX&rank=1"),
        Cont(image: "InsightB2", title:"\nScars Like Wings", descr: "This is the story of Ava Gardener, a girl who returns to school a year after a fire has left her seriously disfigured. Fortunately, Ava meets Piper, a guy who makes her feel less alone in that nightmare.", fonte:"Erin Stewart", link: "https://www.goodreads.com/book/show/39353216-scars-like-wings?from_search=true&from_srp=true&qid=24Fz9b7a8g&rank=1"), Cont(image: "InsightB3", title:"Resilient: How to Grow…", descr: "We need resilience every day and in every situation. In this book, Dr. Rick Hanson shows concrete tips, experiential practices and personal examples on how to develop twelve vital inner strengths connected to the nervous system.", fonte:"Rick Hanson", link: "https://www.goodreads.com/book/show/36025434-resilient?from_search=true&from_srp=true&qid=lnwlyH8xdW&rank=1"),
        Cont(image: "InsightB4", title:"The Female Guide To: Self-Love…", descr: "This book is a real journey to change your perspective, it will guide you towards the complete transformation of mind, body and spirit. 100 days that will challenge you to love yourself and channel your “positive energy flow", fonte:"Ten James", link: ""),
        Cont(image: "InsightB5", title:"\nBeing in Your Body…", descr: "Today, body shame, reinforced by beauty standards and social media, is incredibly difficult to eliminate. In this book teaches you to explore new ways to find self-confidence by supporting a broader definition of beauty.", fonte:"Fariha Róisín", link: "https://www.goodreads.com/book/show/43908904-being-in-your-body-guided-journal?from_search=true&from_srp=true&qid=QSvQEKQl8R&rank=1"),
        Cont(image: "InsightB6", title:"The Body Keeps the Score…", descr: "Trauma is an experience that inevitably leaves traces in our minds and emotions. In this book, Dr. Van der Kolk, one of the world's leading traumatic stress experts, offers an interesting new paradigm for healing.", fonte:"Bessel van der Kolk", link: "https://www.goodreads.com/book/show/18693771-the-body-keeps-the-score?from_search=true&from_srp=true&qid=zecUQxYO6Q&rank=1"),
        Cont(image: "InsightB7", title:"Beyond Beautiful: A Practical Guide …", descr: "A book on self-confidence in an era of toxic beauty standards based on social media. This compact book offers feasible ideas to accept your physical appearance and improve self-confidence.", fonte:"Anuschka Rees", link: "https://www.goodreads.com/book/show/40983157-beyond-beautiful?from_search=true&from_srp=true&qid=NiysEISPq8&rank=1"),
        Cont(image: "InsightB8", title:"\nThe Comparison Cure…", descr: "Lucy Sheridan has helped thousands of people and has now condensed all her liberating knowledge into this book full of tips that helps you improve your self-esteem and self-confidence.", fonte:"Lucy Sheridan", link: "https://www.goodreads.com/book/show/45860211-the-comparison-cure?from_search=true&from_srp=true&qid=yAH7MosCqK&rank=1"),
        Cont(image: "InsightB9", title:"\nScars Left to Heal", descr: "This book is Siobhan St. John's personal memoir that shares the life experiences that made her the strong woman she is today. Through this book she tells us that we must always hope and never give up in the midst of storms.", fonte:"Siobhan St John", link: "https://www.goodreads.com/book/show/46065351-scars-left-to-heal?from_search=true&from_srp=true&qid=Fe5gOqpzwI&rank=1"),
        Cont(image: "InsightB10", title:"The Gifts of Imperfection…", descr: "Now more than ever, we all need to cultivate feelings of self-esteem, acceptance and love for ourselves. This book is a motivational guide on self-esteem and personal growth.", fonte:"Brené Brown", link: "https://www.goodreads.com/book/show/18780189-the-gifts-of-imperfection?from_search=true&from_srp=true&qid=WXeja0uwGw&rank=1"),
        Cont(image: "InsightB11", title:"Women fighters. From the project: invisible body disabilities", descr: "Women Fighters was born to help people accept their bodies, not be ashamed, breaking down the barriers of prejudice, incomprehension and superficiality through the art of photography.", fonte:"Chiara De Marchi", link: "http://www.invisiblebodydisabilities.org/the-book-old/women-fighters/")],
    artists:[
        Cont(image: "InsightI6", title:"\n Claudia Sahuquillo", descr: "Claudia is an artist from Barcelona. She believes in the naked body of women as a way to celebrate the female existence, to stand up, to break the stablished rules and to be the revolution. ", fonte:"", link: "https://www.instagram.com/claudiasahuquillo/?hl=it"),
        Cont(image: "InsightI2", title:"\nErin Stewart", descr: "Erin grew up in the woods of Virginia catching fireflies. She loves using her background in journalism to research and write fiction based on real life. A heart failure survivor and adoptive mother, she believes life throws plot twists and people in our path for a reason, always. Scars Like Wings is her debut novel.", fonte:"", link: "https://www.instagram.com/erin_n_stewart/"),
        Cont(image: "InsightI1", title:"\nSuzon Lagarde", descr: "Suzon is an emerging artist based in London. She creates little worlds in paint; observations from life meeting with treasured memories and dreamt presences.", fonte:"", link: "https://www.instagram.com/suzonlagarde/"),
        Cont(image: "InsightI3", title:"\nAngela Bianchi", descr: "Angela has a scar too. As a personal image consultant she thoughtfully creates and personalizes experiences to help people become independent through personal styling and body acceptance.", fonte:"", link: "https://www.instagram.com/angelabianchivirgoimage/"),
        Cont(image: "InsightI5", title:"\nFariha Róisin", descr: "Fariha is an Australian-Canadian multi-disciplinary artist based in Brooklyn. With an interest in her wellness, Muslim identity, race, self-care pop culture and film she has written for The New York Times, Al Jazeera, The Guardian, Vice, Fusion, Village Voice and others.", fonte:"", link: "https://www.instagram.com/fariha_roisin/"),
        Cont(image: "InsightI4", title:"\nSarah Jean", descr: "Sarah is a poet,performer and a photographer. Her (re)markable project is an in inclusive photographic project born with the aim of documenting stories and scars in an extraordinarily original way.", fonte:"", link: "https://www.instagram.com/remarkableproject/"),
        Cont(image: "InsightI7", title:"\nSamanta Bullock", descr: "Samanta has dedicated her life to improving the visibility of disabled people in the fashion industry and enhancing the clothing that is available. She has been a wheelchair user model from an early age and works as an advocate for inclusion within the fashion industry. She is also a ParaPan Am Doubles Silver medalist in wheelchair tennis.", fonte:"", link: "https://instagram.com/samantabullock?igshid=1al7prymihtry")],
    books:[
        Cont(image: "insightP1", title:"Sharing Your Story Frees You", descr: "Talking about your experience will help you and others. Break the silence. This is the time to turn your story into a message.", fonte:"Billy J. Atwell ft Eli Nash", link: "https://open.spotify.com/episode/2NhiV5ALQUnTouSjCn7dwe?si=QLESVlolQtuISOYw7AmSbA"),
        Cont(image: "insightP2", title:"5 Ways to Feel Better About Your Body", descr: "In this episode you will listen to 5 strategies to feel better about yourself. These strategies will help you have a positive image of body without having to change it!", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/03pJo4gG9DYVbBdyCIIk9P?si=G8oaXQkYTs-09AR_c4oGdQ"), Cont(image: "insightP3", title:"Use Your Wardrobe to Improve Your Body Image", descr: "In this episode, the fashion expert Reachel will give a different perspective on the image of the body and the importance of clothes and style to feel comfortable and always creative.", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/2tfdATr70GnF6WVUdQsuSA?si=n5A2yQD5RF-2BVI5hVP_ZQ"),
        Cont(image: "insightP4", title:"Practice Positive Self-Talk", descr: "In this episode you will discover the importance of positive self-talk. The first step to feel good is to speak positively with yourself, set goals and achieve them!", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/3T1EDWEVQZGzPmnFhg6hm7?si=EVnXpAT3TdCxjXeLPik2WA"), Cont(image: "insightP5", title:"Don’t be responsible - Live life your way", descr: "When our self-esteem is higher, we are also less vulnerable to anxiety; we release less cortisol into our bloodstream when under stress, and it is less likely to linger in our system.", fonte:"Kitty Waters & Michelle Elman", link: "https://open.spotify.com/episode/5aenNyzrxJSNMj82mQi33E?si=gEtT8PHzRgqtRSJY8mGSHA"),
        Cont(image: "insightP6", title:"8 Minute Motivation: Handling Criticism", descr: "Here are some tips to stop worrying about what people think of you. Stop being afraid of negative comments, criticisms and judgment.", fonte:"Natalia Benson", link: "https://open.spotify.com/episode/5wnfsFr2Mb8d45ebeHTt8q?si=4-_712XhTuqWllCu3Mq4Xg"), Cont(image: "insightP7", title:"Self Love Guided Meditation", descr: "In this episode you will dedicate yourself to guided meditation on self-love. Now take some time for yourself, breathe and relax you deserve it.", fonte:"Melanie Lillis", link: "https://open.spotify.com/episode/1ExTSehbhCx0asZLF1g60i?si=XGb6ECfnQxecP6EMufuQ1Q"),
        Cont(image: "insightP8", title:"From Stretch Marks To Glitter Stripes", descr: "Allison Kimmey's message has gone viral and her mission is to help all moms to love their body more. Listen to her story and trust  her special tips!", fonte:"Sen McLellan & Allison Kimmey", link:"https://open.spotify.com/episode/2dW6CQgkCtLPbC80hgkW4u?si=g8mfJ5DJTJOfeXFHR_qsDA"), Cont(image: "insightP9", title:"10 Ways to Develop Self Confidence", descr: "We all often feel judged and are negatively influenced by other people's opinion. In this episode Abby will give you 10 ways to develop self-esteem and self-confidence.", fonte:"Abby Asselin", link: "https://open.spotify.com/episode/1nq5YjNDbq84KZeHu8WQwo?si=f395OhhrSp6Ixzr-Q9YOdA"),
        Cont(image: "insightP10", title:"How To Plant The Seeds Of Confidence", descr: "The first step to do to feel better about yourself and gain self-confidence and self-esteem is: get out of your comfort zone! Check out this episode and find out how to plant seeds of confidence.", fonte:"James Blundell", link: "https://open.spotify.com/episode/50DKtkyhsjEKE2JpJ04Wnr?si=o0b_AjWITQKQmtMupCPcJQ")]
)]

/*
 ,
 Cont(image: "InsightI8", title:"\nMichelle Elman", descr: "Michelle is an author, life coach and speaker who has created successful campaigns. After having many surgeries herself, she felt that she should share her experiences to make people feel that they were not alone.", fonte:"", link: "https://www.instagram.com/scarrednotscared/?hl=it"),
 Cont(image: "InsightI9", title:"\nSara Shakeelde", descr: "Sara is a young Pakistani artist. Her images, covered with a waterfall of glitter, are a tribute to the beauty that lurks in everything even in the most absurd places.", fonte:"", link: "https://www.instagram.com/glitterstretchmarks/"),
 Cont(image: "InsightI10", title:"\nHannah Lisa Witton", descr: "Hannah is an English YouTuber, broadcaster, and author. Her message goes to all people who have a scar: ‘your body is still beautiful.Your body is still worthy of being celebrated and seen.’", fonte:"", link: "https://www.instagram.com/hannahwitton/?hl=it"),
 Cont(image: "InsightI11", title:"\nHilde Atalanta", descr: "Hilde is an illustrator and painter, living and working in Amsterdam. She loves making portraits and enjoys working in different styles. Her work revolves around gender identity, sexuality and inclusivity.", fonte:"", link: "https://www.instagram.com/hildeatalanta/?hl=it"),
 Cont(image: "InsightI12", title:"\nNatalia Benson", descr: "Natalia is a women’s empowerment coach living in Los Angeles. She encourages women to honor their female energy. ‘Sometimes we need each other to overcome things, it is useful to receive messages from others to see things in a new light or in a new way.’", fonte:"", link: "https://www.instagram.com/natalia_benson/?hl=it")
 
 */

class Schermata2: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    static var insights: [String] = ["","","","","",""]
    static var film: [String] = ["the%20theory%20of%20everything","shallow%20Hal","orange%20is%20new%20black","the%20shape%20of%20water","unBreakable","pose","border","glow","hairspray","unorthodox"]
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

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionFooter) {
            let footerView = myCollectionView.dequeueReusableCell(withReuseIdentifier: "footer", for: indexPath) as! FooterCollectionView
            if(imgButt == "SeeMoreMovies"){
                footerView.image.image = UIImage(named: "tmb")
                footerView.text.text = "This product uses the TMDb API but\nis not endorsed or certified by TMDb."
            }else if(imgButt == "SeeMore"){
                footerView.image.image = UIImage(named: "tedx")
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.alignment = NSTextAlignment.center
                let attributedString = NSMutableAttributedString(string: "This work is licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives4.0 International License ")
                attributedString.setAttributes(
                    [NSAttributedString.Key.font : UIFont(name: "CeraPro-Light", size: CGFloat(9.0))!,
                     NSAttributedString.Key.foregroundColor : UIColor(red: 112 / 255.0, green: 112 / 255.0, blue: 112 / 255.0, alpha: 1.0),
                     NSAttributedString.Key.paragraphStyle : paragraphStyle
                    ], range: NSRange(location:0 , length:111)
                )
                attributedString.addAttribute(.link, value:"https://creativecommons.org/licenses/by-nc-nd/4.0/", range: NSRange(location: 30, length: 82))
                footerView.text.attributedText = attributedString
            } else if(imgButt == "SeeMoreBooks"){
                footerView.image.image = UIImage(named: "goodreeds")
                footerView.text.text = ""
            } else if(imgButt == "SeeMorePodcast"){
                footerView.image.image = UIImage(named: "Spotify")
                footerView.text.text = ""
            } else {
                footerView.text.text = ""
            }
            return footerView
        }
        fatalError()
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "ins", for: indexPath) as! InightsCollection
        cell.title.text = contenuto[indexPath.row].title
        cell.label.text = contenuto[indexPath.row].descr
        cell.fonte.text = contenuto[indexPath.row].fonte
        let tap = MyTap(target: self, action: #selector(self.goLink(sender:)))
        tap.link = contenuto[indexPath.row].link
        cell.button.isUserInteractionEnabled = true
        cell.button.addGestureRecognizer(tap)
        let image = UIImage(named: imgButt)
        cell.button.setImage(image, for: .normal)
        if(indexPath.row < contenuto.count - 1){
            cell.div.image = UIImage(named: "divisore")
        } else {
            cell.div.image = UIImage(named: "")
        }
        if(imgButt == "SeeMoreMovies" || imgButt == "SeeMore"){
            if(indexPath.row == contenuto.count - 1){
                cell.div.image = UIImage(named: "divisore")
            }
        }
        if(imgButt == "SeeMoreMovies"){
            if(indexPath.row < Schermata2.film.count){
                if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
                cell.image.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent(Schermata2.film[indexPath.row] + ".png").path)
                }
            }
        } else {
            cell.image.image = UIImage(named: contenuto[indexPath.row].image)
        }
        let tap1 = MyTap(target: self, action: #selector(self.goLink(sender:)))
        tap1.link = contenuto[indexPath.row].link
        cell.image.isUserInteractionEnabled = true
        cell.image.addGestureRecognizer(tap1)
        
        return cell
    }
    
    @objc func goLink(sender : MyTap) {
        if let url = NSURL(string: sender.link){
            UIApplication.shared.open(url as URL)
        }
     }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

        caricaInfo()

        if(Schermata2.insights[0] != ""){
           if(Schermata2.insights[0] == "TEDx"){
                contenuto = structIns[0].pod
                self.imgButt = "SeeMore"
            }
            if(Schermata2.insights[0] == "Movies&TVShows"){
                contenuto = structIns[0].well
                self.imgButt = "SeeMoreMovies"
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
            b1.titleLabel?.font = UIFont(name: "CeraPro-Medium", size: 22)
            b2.isSelected = false
            b2.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b3.isSelected = false
            b3.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b4.isSelected = false
            b4.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b5.isSelected = false
            b5.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b6.isSelected = false
            b6.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
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
                self.imgButt = "SeeMoreMovies"
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
            b1.titleLabel?.font = UIFont(name: "CeraPro-Medium", size: 22)
            b2.isSelected = false
            b2.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b3.isSelected = false
            b3.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b4.isSelected = false
            b4.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b5.isSelected = false
            b5.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b6.isSelected = false
            b6.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            myCollectionView.reloadData()
        }
    }

    @IBAction func setTable(_ sender: UIButton) {
        if !sender.isSelected {
            b1.isSelected = false
            b1.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b2.isSelected = false
            b2.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b3.isSelected = false
            b3.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b4.isSelected = false
            b4.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b5.isSelected = false
            b5.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            b6.isSelected = false
            b6.titleLabel?.font = UIFont(name: "CeraPro-Regular", size: 22)
            sender.isSelected = true
            sender.titleLabel?.font = UIFont(name: "CeraPro-Medium", size: 22)
        }
        
        if(sender.titleLabel?.text == "TEDx"){
            contenuto = structIns[0].pod
            self.imgButt = "SeeMore"
        }
        if(sender.titleLabel?.text == "Movies&TVShows"){
            contenuto = structIns[0].well
            self.imgButt = "SeeMoreMovies"
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



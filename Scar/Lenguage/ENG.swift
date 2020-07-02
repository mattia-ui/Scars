//
//  ENG.swift
//  Scar
//
//  Created by Antonio Cimino on 20/06/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class ENG: UIViewController{
    
        static var goToLink: [String] = ["SeeMore","SeeMoreMovies","SeeMoreArticle","SeeMoreBooks","SeeMoreInspiringPeople","SeeMorePodcast"]
    
        static var sfondiNav: [String] = ["MirrorWork","BeInspired","TheJournal","TakeAWalk","Meditate","DoExercise","ASmile","DailyGoals","EnjoySunlight"]
    
        static var allCardsImages: [String] = ["Card1p","Card2p","Card3p","Card4p","Card5p","Card6p","Card7p","Card8p","Card9p"]
    
        static var button = [
            "submit azzurro", //Bottone elabora disegno schermata disegno
            "submitno", //Bottone elabora disegno schermata disegno disabilitato
            "Reset", //Bottone reset schermata disegno
            "letsgoazzurro", //Bottone let's go post Collage
            "nextazzurro", //Bottone nex go schermata Choose shape/Choose shape2/Choose palette/Choose texture
            "nextazzurrono", //Bottone nex schermata Choose shape/Choose shape2/Choose palette/Choose texture disabilitato
            "no", //Bottone no schermata Choose texture
            "yes", //Bottone no schermata Choose texture
            "readyViola", //Bottone ready schermata tutorial 2
            "start", //Bottone start schermata tutorial
            "StartN", //Bottone start schermata tutorial disailitato
            "done", //Bottone done schermata tutorial
            "DoneN", //Bottone done schermata tutorial disabilitato
            "Let'sgo", //Bottone let's go schermata tutorial
            "proceed", //Bottone procedere Collage
            "share (2)", //Bottone schare Generate Again
            "generate", //Bottone generate Generate Again
            "share", //Bottone schare Share page
            "shareanonymously (2)",//Bottone schare anonimo Share page,
            "submit azzurro",
            "submitno",
            "MarkAsDone1"
        ]

        static var insights = ["TEDx","Movies and Series","Articles","Books","Inspiring People","Podcasts"]
        
        static var textOnCollage = [
            "The pattern in the large circle describes ",
            "your personality ",
            "and the color inside represents ",
            "the way you want to look ","from the outside. \n\nThe two shapes on the outside recount ",
            "the way you would like to be ","and the texture inside represents ",
            "the perception you have of your sign, ",
            "that is in gold and occupies the center of the image, as ",
            "Kintsugi art ","teaches! ",
            "Masterpiece saved!",
            "Your Masterpiece was copied successfully"
        ]
        
        static var textOnChooseShape = [
            "Which of these shapes represents ",
            "your deepest being?","Square \n",
            "careful - analytic",
            "Rectangle \n",
            "curious - confused",
            "Triangle \n",
            "leader - focused",
            "Circle \n",
            "empathic - sociable",
            "Zig zag \n",
            "creative - aspiring",
            "Question 1/4"
        ]
        
        static var textOnChooseShape2 = [
            "Which of these shapes represents ",
            "the way you would like to be?",
            "Square \n",
            "careful - analytic",
            "Rectangle \n",
            "curious - confused",
            "Triangle \n",
            "leader - focused",
            "Circle \n",
            "empathic - sociable",
            "Zig zag \n",
            "creative - aspiring",
            "Question 2/4"
        ]
        
        static var Shape = [
            "Square",
            "Rectangle",
            "Triangle",
            "Circle",
            "Zig zag"
        ]
        
        static var textOnChoosePalette = [
            "With which of these color palettes\n",
            "do you dress more?",
            "Warm colors",
            "Cool colors",
            "Neutrals",
            "Question 3/4"
        ]

        static var Palette = [
            "Warm",
            "Cool",
            "Neutrals"
        ]
        
        static var textOnCaricaImage = [""]
        
        static var textOnLaunch = [""]
        
        static var textOnChooseTexture = [
            "Touch ",
            "your indelible sign, which of\nthese textures ",
            "reminds you of it? ",
            "Sea",
            "Crater",
            "Textile fiber",
            "Marble",
            "Wood",
            "Question 4/4",
            "Submit answers",
            "Are you sure about all the answers you gave?",
            "Yes"
        ]
        
        static var Texture = [
            "Sea",
            "Crater",
            "Textile",
            "Marble",
            "Wood"
        ]
        
        static var textOnLPassword = [""]
        
        static var textOnPostCollage = [""]
        
        static var Schermata1weeklyInfo = [
            WeeklyStruct(
            title:
                "Read a good book",
            descr:
                "Did you know that reading reduces stress levels, improves mood and is very good for your mind? What are you waiting for? Choose something you like and start reading it.",
            image:
                "Weekly1"
            ),
            WeeklyStruct(
            title:
                "Follow a passion, dedicate yourself to a hobby",
            descr:
                "If you love something, why not do it? There is no room for criticism here, there is only you and your passions. Be positive, be creative and enjoy it.",
            image:
                "Weekly2"
            ),
            WeeklyStruct(
            title:
                "Try new things, get out of your comfort zone",
            descr:
                "Did you know that a comfort zone is a self-imposed boundary that a person refuses to cross? What are you waiting for? Try new flavors, wear new colors and do something you've never done before!",
             image:
                "Weekly3"
            ),
            WeeklyStruct(
            title:
                "Become aware of your difficulties",
            descr:
                "A. Einstein said: ‘If you judge a fish by its ability to climb a tree, it will live its whole life believing that it is stupid.’ Accept your limits but after a failure     always be ready to rediscover yourself again.",
            image:
                "Weekly4"
            ),
            WeeklyStruct(
            title:
                "List the things you like about your body",
            descr:
                "Today remember that there is no one else in the world who is just like you. The things that make you unique are what make you special. Think about what you love most about     yourself and be proud of it!",
            image:
                "Weekly5"
            ),
            WeeklyStruct(
            title:
                "Stay in contact with nature",
            descr:
                "Did you know that contact with nature affects our relationship with other people and makes us less irritable? So today turn off your phone for a while and get outside. ",
            image:
                "Weekly6"
            ),
            WeeklyStruct(
            title:
                "Surround yourself with positive people and talk with them",
            descr:
                "Today try to avoid critical and negative people who have a problem for each solution. Let go of negativity, surround yourself by positive people, make pancakes and enjoy!",
            image:
                "Weekly7"
            ),
            WeeklyStruct(
            title:
                "Make a list or rethink your achievements",
            descr:
                "When you set yourself a goal to reach, it seems unreachable. Today make a list of all the obstacles you have overcome, you will discover that they do not even have half the strength you have!",
            image:
                "Weekly8"
            )
        ]
        
        static var Schermata1frasiDeStoCazzo : [String] = [
            "Great! The first step is done!",
            "You are in great shape today!",
            "Go up and never stop.",
            "Wow! You are almost halfway there.",
            "Keep it up, goes very well!",
            "Don't give up, you're almost done.",
            "You did it great!" ,
            "Power! Only one is missing.",
            "Well done! See you tomorrow.",
            "Start the activities and mark them as done!"
        ]
        
        static var Schermata1Saluti = [
            "Good Afternoon,",
            "Good Evening,",
            "Good Morning,"
        ]
         
        static var Schemata1Text = ["Ready for a boost of self-esteem?","Daily","Weekly"]
    
        static var Schermata2structInsENG = [ins(
        pod:[
            Cont(
            image:
                "insight1",
            title:
                "How to Build\nSelf Confidence",
            descr:
                "CeCe Olisa is a body positivity expert who creates popular plus-size workout videos on her YouTube channel, encouraging women to train because they love their bodies and not because they hate them.",
            fonte:
                "CeCe Olisa | TEDxFresnoState",
            link:
                "https://www.youtube.com/watch?v=ivNNgdCsY7o"
            ),
            Cont(
            image:
                "insight2",
            title:
                "Stop hating your body; start living your life",
            descr:
                "Taryn Brumfitt is a vary famous body image activist. This talk makes us understand that it is not our body that is wrong but our perspective and the unrealistic standards that surround us.",
            fonte:
                "Taryn Brumfitt | TEDxAdelaide",
            link:
                "https://www.youtube.com/watch?v=LSMH3WABkwg"
            ),
            Cont(
            image:
                "insight3",
            title:
                "\nOwn your face",
            descr:
                "Robert Hodge is political advisor and author of the book \"Ugly\". With great humor he speaks of love, life and above all of the imperfection and pain that characterized his personal experience.",
            fonte:
                "Robert Hodge | TedxSouthBank",
            link:
                "https://www.youtube.com/watch?v=QbxinUJcLGg"),
            Cont(
            image:
                "insight4",
            title:
                "Dear Unresolved Soul, It’s Not Death You Fear, It's Life",
            descr:
                "Christina is a writer, speaker and performer. At nineteen years old, she became one of the youngest Pancreatic Cancer survivors in the world. She has faced death. More than once. And here is what she learned.",
            fonte:
                "Christina Helena",
            link:
                "https://www.youtube.com/watch?v=1c4iavIeKp4"),
            Cont(
            image:
                "insight5",
            title:
                "Have you hated your body enough today?",
            descr:
                "Michelle is the creator of the #ScarredNotScared campaign, a community that teach women to appreciate their bodies and scars. In this talk she tells us that changing the relationship with our body can radically change our life.",
            fonte:
                "Michelle Elman | TEDxCoventGardenWomen",
            link:
                "https://www.youtube.com/watch?v=d88uXMWSVfU"),
            Cont(image:
                "insight6",
            title:
                "Yes, my scars do define me",
            descr:
                "Gebran is a marketing and advertising student and his biggest dream is to become a writer. He says that our life is like a book of stories but ... have we ever wondered what makes a story beautiful?",
            fonte:
                "Gebran Abou Zeid | TEDxNDULouaize",
            link:
                "https://www.youtube.com/watch?v=p4MPyH29PHQ"
            ),
            Cont(
            image:
                "insight7",
            title:
                "\nBehind the Scars",
            descr:
                "Sophie Mayanne is a photographer, her unmistakable style is extraordinary in \"Behind The Scars\", a project that celebrates scars of all shapes and sizes and the incredible stories behind them.",
            fonte:
                "Sophie Mayanne | TEDxLeidenUniversity",
            link:
                "https://www.youtube.com/watch?v=_3orJwoshTQ"
            ),
            Cont(
            image:
                "insight8",
            title:
                "From Scars to Strength: The Poetry of Recovery",
            descr:
                "Bianca is a power-house emcee, poet, digital composer, cultural activist and educator. In this intimate talk she shares her insights on self-awareness, recovery and the importance of training for mental health.",
            fonte:
                "Bianca Mikahn | TEDxBoulder",
            link:
                "https://www.youtube.com/watch?v=9TPmRcfv3TQ&feature=youtu.be"
            ),
            Cont(image:
                "insight9",
            title:
                "Who are you, really? The puzzle of personality",
            descr:
                "What makes you, you? In this talk Brian Little, a Cambridge research professor, analyzes and redefines the threads of our personalities and suggests ways in which we can transform ourselves.",
            fonte:
                "Brian Little",
            link:
                "https://www.youtube.com/watch?v=qYvXk_bqlBk"
            ),
            Cont(image:
                "insight10",
            title:
                "You are not alone in your loneliness",
            descr:
                "Jonny is a Canadian author and illustrator. In this talk he says that telling story and being open with our loneliness and fear can help us find comfort and feel less alone.",
            fonte:
                "Jonny Sun",
            link:
                "https://www.youtube.com/watch?v=gi6rMXu_veE"
            ),
            Cont(
            image:
                "insight11",
            title:
                "3 tips to boost your confidence",
            descr:
                "We actually have the power to cultivate our own confidence, but where does confidence come from and how can we get more? In this video, there are three easy tips to boost your confidence.",
            fonte:
                "TED-Ed",
            link:
                "https://www.youtube.com/watch?v=l_NYrWqUR40")],
            well:[
            Cont(
            image:
                "insight3",
            title:
                "The Theory Of\nEverything",
            descr:
                "It explores the most significant moments in Stephen Hawking’s life and elevates an atmosphere pleasing to its viewer, narrating every event of the plot, be it positive or negative.",
            fonte:
                "",
            link:
                "https://www.youtube.com/watch?v=Salz7uGp72c"
            ),
            Cont(image: "insight3", title:"\nShallow Hal", descr: "A shallow man falls in love with a 300-pound woman because of her inner beauty. One day, the self-help guru Tony Robbins hypnotizes him into recognizing only the inner beauty of women.", fonte:"", link: "https://www.youtube.com/watch?v=ZZWvgEOoV3U"),
            Cont(image: "insight4", title:"Orange Is The\nNew Black", descr: "This show has one of the most diverse casts on TV, with different ethnicities and sizes. Every character is uniquely themselves, portraying every different kind of body type.", fonte:"", link: "https://www.youtube.com/watch?v=vY0qzXi5oJg"), Cont(image: "insight4", title:"\nThe Shape Of Water", descr: "Amazement, beauty, horror and a strong dramatic component on which the love between different, between the last and different; an original film, visually powerful and emotionally linked to the old dark tales of the \"monster of the black lagoon\".", fonte:"", link: "https://www.youtube.com/watch?v=XFYWazblaUA"),
            Cont(image: "insight3", title:"Unbreakable\nKimmy Schmidt", descr: "Titus is overweight, black, and gay, and he never feels lesser for it. Kimmy is also body-positive, she doesn't see size or imperfections. We could all afford to be that way!", fonte:"", link: "https://www.youtube.com/watch?v=Hl4bOuGNMwo"), Cont(image: "insight4", title:"\nPOSE", descr: "American drama television series about New York City's African-American and Latino LGBTQ and gender-nonconforming ballroom culture scene in the 1980s. Is this enough?", fonte:"", link: "https://www.youtube.com/watch?v=_t4YuPXdLZw"),
            Cont(image: "insight4", title:"\nGlow", descr: "They were a real group of women wrestlers, made up of women in every different race and size. Body positivity means accepting there are different bodies and that they are all beautiful!", fonte:"", link: "https://www.youtube.com/watch?v=wnKEoXbBTEw"), Cont(image: "insight4", title:"\nHairspray", descr: "Ricki Lake, aka Tracy Turnblad, has always been a body positive icon, in Hairspray she fights the shocking segregation enforced by her favorite TV show after she wins a chance to dance on it.", fonte:"", link: "https://www.youtube.com/watch?v=SUoG7mqCixI"),
            Cont(image: "insight4", title:"\nUnorthodox", descr: "Esty is living unhappily in an arranged marriage and an ultra-Orthodox community, she runs away to discover life outside her community and rejecting all of the beliefs she grew up with.", fonte:"", link: "https://www.youtube.com/watch?v=-zVhRId0BTw")],
        mov:[
            Cont(image: "InsightA6", title:"My scars: journey to body acceptance", descr: "\"My accidental fall into boiling water happened at home, when I was three. I ended up in hospital on life support. Many operations followed….\"", fonte:"From Sylvia Mac on mentalhealth.org", link: "https://www.mentalhealth.org.uk/stories/my-scars-journey-body-acceptance"),
            Cont(image: "InsightA1", title:"How Scars Affect Psychosocial Well-Being", descr: "\"…the psychosocial impact of scarring from the treatment of facial skin cancers has been shown to affect the young, old, male and female alike.\"", fonte:"From Katie Delach on pennmedicine.org", link: "https://www.pennmedicine.org/news/news-blog/2015/may/beyond-skin-deep-how-scars-aff"),
            Cont(image: "InsightA2", title:"Kintsugi: the art of precious scars", descr: "\"By repairing broken ceramics it’s possible to give a new lease of life to pottery that becomes even more refined thanks to its scars.\"", fonte:"Stefano Carnazzi on lifegate.com", link: "https://www.lifegate.com/people/lifestyle/kintsugi"), Cont(image: "InsightA4", title:"5 ways to build lasting self-esteem", descr: "When our self-esteem is higher, we are also less vulnerable to anxiety; we release less cortisol into our bloodstream when under stress, and it is less likely to linger in our system.", fonte:"Guy Winch on ideas.ted.com", link: "https://ideas.ted.com/5-ways-to-build-lasting-self-esteem/"),
            Cont(image: "InsightA5", title:"Learning to Accept (if Not Love) My Scar", descr: "Although \"my scar\" — and I do feel proprietary about it — has been a part of me for more than three decades, an answer still doesn’t come easily. My first inclination was to pretend I hadn’t heard the question.", fonte:"Steven Petrow on nytimes.com", link: "https://www.nytimes.com/2017/12/15/well/live/scar-surgery-cancer-shame-self.html"), Cont(image: "InsightA8", title:"Loving your body, scars and all", descr: "\"It is genuinely hard to cope with some scars, but try and remember that the important thing about you is the person you are inside and that you love yourself, scars and all.\"", fonte:"Fascia on bodyinharmony.org", link: "https://www.bodyinharmony.org.uk/blog/loving-your-body-scars-and-all"), Cont(image: "InsightA7", title:"Why we should all embrace a new era of skin positivity", descr: "\"Just as the body positivity movement led to diverse shapes and sizes being celebrated, skin positivity has the power to redefine our expectations around our skin\"", fonte:"Stylist Beauty Team on stylist.co.uk", link: "https://www.stylist.co.uk/beauty/skin-positivity-adult-acne-problem-skin-spot-treatments-skincare/192307")],
        art:[
            Cont(image: "InsightB1", title:"Kintsugi: Embrace your imperfections…", descr: "The psychologist Tomás Navarro says that we should face our life with the philosophy of the Japanese masters of Kintsugi: not to hide our pains but to enhance them because they are proof of our strength.", fonte:"Tomás Navarro", link:"https://www.goodreads.com/book/show/39778473-kintsugi?from_search=true&from_srp=true&qid=uMd7LfvEqX&rank=1"),
            Cont(image: "InsightB2", title:"\nScars Like Wings", descr: "This is the story of Ava Gardener, a girl who returns to school a year after a fire has left her seriously disfigured. Fortunately, Ava meets Piper, a guy who makes her feel less alone in that nightmare.", fonte:"Erin Stewart", link: "https://www.goodreads.com/book/show/39353216-scars-like-wings?from_search=true&from_srp=true&qid=24Fz9b7a8g&rank=1"), Cont(image: "InsightB3", title:"Resilient: How to Grow…", descr: "We need resilience every day and in every situation. In this book, Dr. Rick Hanson shows concrete tips, experiential practices and personal examples on how to develop twelve vital inner strengths connected to the nervous system.", fonte:"Rick Hanson", link: "https://www.goodreads.com/book/show/36025434-resilient?from_search=true&from_srp=true&qid=lnwlyH8xdW&rank=1"),
            Cont(image: "InsightB5", title:"\nBeing in Your Body…", descr: "Today, body shame, reinforced by beauty standards and social media, is incredibly difficult to eliminate. This book teaches you to explore new ways to find self-confidence by supporting a broader definition of beauty.", fonte:"Fariha Róisín", link: "https://www.goodreads.com/book/show/43908904-being-in-your-body-guided-journal?from_search=true&from_srp=true&qid=QSvQEKQl8R&rank=1"),
            Cont(image: "InsightB6", title:"The Body Keeps the Score…", descr: "Trauma is an experience that inevitably leaves traces in our minds and emotions. In this book, Dr. Van der Kolk, one of the world's leading traumatic stress experts, offers an interesting new paradigm for healing.", fonte:"Bessel Van der Kolk", link: "https://www.goodreads.com/book/show/18693771-the-body-keeps-the-score?from_search=true&from_srp=true&qid=zecUQxYO6Q&rank=1"),
            Cont(image: "InsightB7", title:"Beyond Beautiful: A Practical Guide …", descr: "A book on self-confidence in an era of toxic beauty standards based on social media. This compact book offers feasible ideas to accept your physical appearance and improve self-confidence.", fonte:"Anuschka Rees", link: "https://www.goodreads.com/book/show/40983157-beyond-beautiful?from_search=true&from_srp=true&qid=NiysEISPq8&rank=1"),
            Cont(image: "InsightB8", title:"\nThe Comparison Cure…", descr: "Lucy Sheridan has helped thousands of people and has now condensed all her liberating knowledge into this book full of tips that helps you improve your self-esteem and self-confidence.", fonte:"Lucy Sheridan", link: "https://www.goodreads.com/book/show/45860211-the-comparison-cure?from_search=true&from_srp=true&qid=yAH7MosCqK&rank=1"),
            Cont(image: "InsightB9", title:"\nScars Left to Heal", descr: "This book is Siobhan St. John's personal memoir that shares the life experiences that made her the strong woman she is today. Through this book she tells us that we must always hope and never give up in the midst of storms.", fonte:"Siobhan St John", link: "https://www.goodreads.com/book/show/46065351-scars-left-to-heal?from_search=true&from_srp=true&qid=Fe5gOqpzwI&rank=1"),
            Cont(image: "InsightB10", title:"The Gifts of Imperfection…", descr: "Now more than ever, we all need to cultivate feelings of self-esteem, acceptance and love for ourselves. This book is a motivational guide on self-esteem and personal growth.", fonte:"Brené Brown", link: "https://www.goodreads.com/book/show/18780189-the-gifts-of-imperfection?from_search=true&from_srp=true&qid=WXeja0uwGw&rank=1")],
        artists:[
            Cont(image: "InsightI6", title:"\nClaudia Sahuquillo", descr: "Claudia is an artist from Barcelona. She believes in the naked body of women as a way to celebrate the female existence, to stand up, to break the stablished rules and to be the revolution. ", fonte:"Artist", link: "https://www.instagram.com/claudiasahuquillo/?hl=it"),
            Cont(image: "Erin_Stewart", title:"\nErin Stewart", descr: "Erin grew up in the woods of Virginia catching fireflies. She loves using her background in journalism to research and write fiction based on real life. A heart failure survivor and adoptive mother, she believes life throws plot…", fonte:"Author", link: "https://www.instagram.com/erin_n_stewart/"),
            Cont(image: "InsightI1", title:"\nSuzon Lagarde", descr: "Suzon is an emerging artist based in London. She creates little worlds in paint; observations from life meeting with treasured memories and dreamt presences.", fonte:"Artist", link: "https://www.instagram.com/suzonlagarde/"),
            Cont(image: "InsightI3", title:"\nAngela Bianchi", descr: "Angela has a scar too. As a personal image consultant she thoughtfully creates and personalizes experiences to help people become independent through personal styling and body acceptance.", fonte:"Image Consultant", link: "https://www.instagram.com/angelabianchivirgoimage/"),
            Cont(image: "InsightI5", title:"\nFariha Róisin", descr: "Fariha is an Australian-Canadian multi-disciplinary artist based in Brooklyn. With an interest in her wellness, Muslim identity, race, self-care pop culture and film she has written for The New York Times, Al Jazeera…", fonte:"Artist, writer, editor", link: "https://www.instagram.com/fariha_roisin/"),
            Cont(image: "InsightI4", title:"\nSarah Jean", descr: "Sarah is a poet,performer and a photographer. Her (re)markable project is an in inclusive photographic project born with the aim of documenting stories and scars in an extraordinarily original way.", fonte:"Poet, performer, photographer", link: "https://www.instagram.com/remarkableproject/"),
            Cont(image: "InsightI7", title:"\nSamanta Bullock", descr: "Samanta has dedicated her life to improving the visibility of disabled people in the fashion industry and enhancing the clothing that is available. She has been a wheelchair user model from an early age and works as an advocate…", fonte:"Model, Paralympian", link: "https://instagram.com/samantabullock?igshid=1al7prymihtry"),
            Cont(image: "InsightI13", title:"\nChiara De Marchi", descr: "Chiara is a professional photographer and art lover. Her \"Invisible Body Disabilities\" project collects photos and stories of female warriors who, with courage, decided to show their invisible diseases through the art of photography.", fonte:"Photographer", link: "https://www.instagram.com/invisiblebodydisabilities/"),
            Cont(image: "InsightI14", title:"\nChristina Helena", descr: "As one of the youngest pancreatic cancer survivors with a thirteen-inch scar across her abdomen, Christina is redefining the stigma behind trauma and pain with one simple thought: My Scar is Sexy®. Christina’s story is…", fonte:"Speaker, writer, performer and coach", link: "https://www.instagram.com/iamchristinahelena/")],
        books:[
            Cont(image: "insightP1", title:"Sharing Your Story Frees You", descr: "Talking about your experience will help you and others. Break the silence. This is the time to turn your story into a message.", fonte:"Billy J. Atwell ft Eli Nash", link: "https://open.spotify.com/episode/2NhiV5ALQUnTouSjCn7dwe?si=QLESVlolQtuISOYw7AmSbA"),
            Cont(image: "insightP2", title:"5 Ways to Feel Better About Your Body", descr: "In this episode you will listen to 5 strategies to feel better about yourself. These strategies will help you have a positive image of body without having to change it!", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/03pJo4gG9DYVbBdyCIIk9P?si=G8oaXQkYTs-09AR_c4oGdQ"), Cont(image: "insightP3", title:"Use Your Wardrobe to Improve Your Body Image", descr: "In this episode, the fashion expert Reachel will give a different perspective on the image of the body and the importance of clothes and style to feel comfortable and always creative.", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/2tfdATr70GnF6WVUdQsuSA?si=n5A2yQD5RF-2BVI5hVP_ZQ"),
            Cont(image: "insightP4", title:"Practice Positive Self-Talk", descr: "In this episode you will discover the importance of positive self-talk. The first step to feel good is to speak positively with yourself, set goals and achieve them!", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/3T1EDWEVQZGzPmnFhg6hm7?si=EVnXpAT3TdCxjXeLPik2WA"), Cont(image: "insightP5", title:"Don’t be responsible - Live life your way", descr: "Michelle underwent over 15 surgeries before the age of 20. At first she used to cover her scars and be ashamed of them. Today she teaches people how to feel happy and comfortable in their bodies.", fonte:"Kitty Waters & Michelle Elman", link: "https://open.spotify.com/episode/5aenNyzrxJSNMj82mQi33E?si=gEtT8PHzRgqtRSJY8mGSHA"),
            Cont(image: "insightP6", title:"8 Minute Motivation: Handling Criticism", descr: "Here are some tips to stop worrying about what people think of you. Stop being afraid of negative comments, criticisms and judgment.", fonte:"Natalia Benson", link: "https://open.spotify.com/episode/5wnfsFr2Mb8d45ebeHTt8q?si=4-_712XhTuqWllCu3Mq4Xg"), Cont(image: "insightP7", title:"Self Love Guided Meditation", descr: "In this episode you will dedicate yourself to guided meditation on self-love. Now take some time for yourself, breathe and relax you deserve it.", fonte:"Melanie Lillis", link: "https://open.spotify.com/episode/1ExTSehbhCx0asZLF1g60i?si=XGb6ECfnQxecP6EMufuQ1Q"),
            Cont(image: "insightP8", title:"From Stretch Marks To Glitter Stripes", descr: "Allison Kimmey's message has gone viral and her mission is to help all moms to love their body more. Listen to her story and trust  her special tips!", fonte:"Sen McLellan & Allison Kimmey", link:"https://open.spotify.com/episode/2dW6CQgkCtLPbC80hgkW4u?si=g8mfJ5DJTJOfeXFHR_qsDA"), Cont(image: "insightP9", title:"10 Ways to Develop Self Confidence", descr: "We all often feel judged and are negatively influenced by other people's opinion. In this episode Abby will give you 10 ways to develop self-esteem and self-confidence.", fonte:"Abby Asselin", link: "https://open.spotify.com/episode/1nq5YjNDbq84KZeHu8WQwo?si=f395OhhrSp6Ixzr-Q9YOdA"),
            Cont(image: "insightP10", title:"How To Plant The Seeds Of Confidence", descr: "The first step to do to feel better about yourself and gain self-confidence and self-esteem is: get out of your comfort zone! Check out this episode and find out how to plant seeds of confidence.", fonte:"James Blundell", link: "https://open.spotify.com/episode/50DKtkyhsjEKE2JpJ04Wnr?si=o0b_AjWITQKQmtMupCPcJQ")/*,
        Cont(image: "InsightI8", title:"\nMichelle Elman", descr: "Michelle is an author, life coach and speaker who has created successful campaigns. After having many surgeries herself, she felt that she should share her experiences to make people feel that they were not alone.", fonte:"", link: "https://www.instagram.com/scarrednotscared/?hl=it"),
        Cont(image: "InsightI9", title:"\nSara Shakeelde", descr: "Sara is a young Pakistani artist. Her images, covered with a waterfall of glitter, are a tribute to the beauty that lurks in everything even in the most absurd places.", fonte:"", link: "https://www.instagram.com/glitterstretchmarks/"),
        Cont(image: "InsightI10", title:"\nHannah Lisa Witton", descr: "Hannah is an English YouTuber, broadcaster, and author. Her message goes to all people who have a scar: ‘your body is still beautiful.Your body is still worthy of being celebrated and seen.’", fonte:"", link: "https://www.instagram.com/hannahwitton/?hl=it"),
        Cont(image: "InsightI11", title:"\nHilde Atalanta", descr: "Hilde is an illustrator and painter, living and working in Amsterdam. She loves making portraits and enjoys working in different styles. Her work revolves around gender identity, sexuality and inclusivity.", fonte:"", link: "https://www.instagram.com/hildeatalanta/?hl=it"),
        Cont(image: "InsightI12", title:"\nNatalia Benson", descr: "Natalia is a women’s empowerment coach living in Los Angeles. She encourages women to honor their female energy. ‘Sometimes we need each other to overcome things, it is useful to receive messages from others to see things in a new light or in a new way.’", fonte:"", link: "https://www.instagram.com/natalia_benson/?hl=it")*/]
        )]
        
        static var textOnTakePicture = ["Draw the shape ","of your indelible sign, or help yourself taking a ","picture ","of it to better ","trace it.","Don’t worry",", the picture you make won’t be stored in the app!","Choose the way!"]
        
        static var ViewControllerInitialdati = [ActivityStruct(
            attivita1:[
                ContenutoStruct(contenuto: "Doing mirror work is one of the most loving gifts you can give yourself. Remember that the more you use your mirror for complimenting and supporting yourself, the deeper and more pleasant your relationship with yourself will become.\nHere are three simple steps for mastering your mirror work in practice!" , titolo: "Your mirror is your friend", righe: 13), ContenutoStruct(contenuto:"Using a handheld mirror allows you to get closer to the most intimate part of yourself. Just make sure you're in a place where nobody can bother you!" , titolo: "1. Get a handheld mirror", righe: 20), ContenutoStruct(contenuto: "Start by making eye contact with yourself in the mirror and don't worry if at first this may seem a little uncomfortable.", titolo: "2. Make eye contact", righe: 26), ContenutoStruct(contenuto: "Now begin to say some of your favorite affirmations out loud or just start a conversation with yourself. It’s so important to give yourself little positive messages, say anything that makes you feel really good!\n \n", titolo: "3. Give yourself positive messages",righe: 33)],
            attivita2:
                [ContenutoStruct(contenuto: "Taking some time and writing a journal could help you improve your body image. Writing activities could be used as a form of therapy for people who have self-esteem and body issues.\nReady to get started? Here are some small tips that will help you along the way:\n", titolo: "The importance of writing", righe: 12),
                ContenutoStruct(contenuto: "Everyone has his own times: if you are an early riser, you can update your journal in the morning but if you are a night owl, choose to update it in the evening.", titolo: "1. Choose a suitable time for you", righe: 19),
                ContenutoStruct(contenuto: "Remember that you can change yourself but not others! Don’t think about what other people might say or think. They don’t matter at all. Just think about what you feel.", titolo: "2. Stop listening to negativity", righe: 26),
                ContenutoStruct(contenuto: "Your body deserves respect, attention and love. Look yourself in the mirror, appreciate all the perfect things about you and write them in your diary.", titolo: "3. Write in a positive way about you", righe: 33),
                ContenutoStruct(contenuto: "To understand yourself better you are going to keep track of your overall progress. A reliable way in which you can do this is by rating how you feel each day.", titolo: "4. Rate how you feel each day", righe: 40),
                ContenutoStruct(contenuto: "Probably after some time your passion for writing may wane, but don't worry. Remember that: consistency is the key. A useful way to not give up is to reward yourself for each writing session you end.", titolo: "5. Never give up!", righe: 47)],
            attivita3:
                [ContenutoStruct(contenuto: "If you are struggling with your body image issues or you are trying to increase your self-esteem, being inspired by someone who has had an experience similar to yours can be just the kick start you need to feel better about yourself.\nAn easy and fun way to be inspired by others is to collect quotes or story from your favorite celebrity or Instagram influencer, but also from authors and regular people.\n", titolo: "Inspiration matters", righe: 15),
                ContenutoStruct(contenuto: "• Save your favorite quotes or stories for your next low self-esteem day \n• Write them on colored sticky notes\n• Share them with your friends\n• Read them out loud when you look in the mirror\n• Put them into practice", titolo: "Let's see together how to get inspired", righe: 25)],
            attivita4:
                [ContenutoStruct(contenuto: "Try to walk for at least 30 minutes. If it's too difficult for you, don't worry. Take small regular 10-minute walks three times a day and then gradually switch to longer sessions.\n\nPeople who exercise regularly tend to do so because it gives them a great sense of well-being, they feel more relaxed and positive about themselves and their lives.\n\nWalking requires minimal equipment, can be done at any time of day and can be performed at your own pace.. so no excuses!\n", titolo: "Walking is important", righe: 25)],
            attivita5:
                [ContenutoStruct(contenuto:"Meditation is a method of knowing yourself deeply, it can be used as a simple technique of relax or as a tool for the growth of awareness, spirituality or generally as a form of self-care.\nHere you have some small tips that will help you along the way: ready to get started?", titolo: "Look for your mantra", righe: 12),
                ContenutoStruct(contenuto: "Concentrate on breathing and free your mind of unnecessary thoughts.", titolo: "1. Learn to meditate on your breathing", righe: 17),
                ContenutoStruct(contenuto: "Try to be aware of the posture you adopt, focus all your attention on your body.", titolo: "2. Check your posture", righe: 22),
                ContenutoStruct(contenuto: "The eyes must not be open, to avoid distractions, but not closed either, to avoid falling asleep.", titolo: " 3. Squint your eyes", righe: 28),
                ContenutoStruct(contenuto: "To increase your concentration on the breath you can use a mantra, it is a short sentence, which you can repeat over and over again.", titolo: " 4. Use a mantra", righe: 34),
                ContenutoStruct(contenuto: "It is important to dedicate enough time to this practice. The ideal would be two meditation sessions, the first in the morning and the second in the evening. Meditation is not an occasional practice, it is very important to meditate every day, even for just a few minutes.", titolo: "5. Find your ideal time", righe: 42)],
            attivita6:
                [ContenutoStruct(contenuto: "\nRegular exercises can have a deeply positive impact on your daily life. But don’t worry, you don’t have to torture yourself with difficult exercises to get what you want. You can build confidence and do your exercises on your own terms and on your own times.\nLet's see together some exercises you can do:", titolo: "What are the exercises that affect your \nmood in a positive way?\n", righe: 13),
                ContenutoStruct(contenuto: "Yoga develops inner awareness by focusing your attention on what you are experiencing in the present moment without judging yourself.", titolo: "1. Yoga", righe: 20),
                ContenutoStruct(contenuto: "Pilates is a training method that teaches you to become aware of your body, correct your posture and improve the precision of your movements.", titolo: "2. Pilates", righe: 27),
                ContenutoStruct(contenuto: "Tai Chi is a discipline of ancient origins, close to the world of martial arts, useful for strengthening the character, the elasticity of the muscles and the improvement of posture.", titolo: "3. Tai Chi", righe: 33)],
            attivita7:
                [ContenutoStruct(contenuto: "Do you remember when was the last time you smiled? Smiling is good for health and generates positive reactions for your body.\n\nAnd if you think you have no reason to laugh, invent it, look around for something funny like a good comedy or a joke! Your whole body will thank you!\n\nYou will find below 3 reasons why smiling is good for your health!\n\n- Smiling improves productivity at work, a smile can create bonds in the team, reduce the level of stress and help you solve problems with more lucidity.\n\n- Smiling makes you creative, the more relaxed you are, the more inclined your mind is to create.\n\n- Smiling makes you sleep better, smiling in the evening increases the production of melatonin which helps you sleep.\n\n...so smile without moderation!", titolo: "There is always a reason to smile", righe: 32)],
            attivita8:
                [ContenutoStruct(contenuto: "Sunlight brings mental well-being, improves mood and removes stress.\n\nThe benefits are many but .. How to expose yourself to sunlight while staying at home?\n\nIf you have a balcony organize yourself with a comfortable chair and try to spend time outdoors every day.\n\nAnd what if you don't have a balcony? Try to identify the times of day when the light enters directly from your windows. Open it and sit in favor of the sunlight.\nUse every moment of pause you have and expose yourself to sunlight every day.", titolo: "What does sunlight do to your body?", righe: 25)],
            attivita9:
                [ContenutoStruct(contenuto: "Your mind is the only useful and essential tool you have to manage and plan your thoughts, aspirations and goals. If you plan your goals it will be much easier to shape the life you want and get the results you want to achieve.\nLet's see together how to manage the difficulties and reach the goal:", titolo: "Plan, manage and reach", righe: 12),
                 ContenutoStruct(contenuto: "Classify them according to the importance they have for you and understand the steps you need to take in order to achieve them.", titolo: "1. Make a list of all the goals", righe: 18),
                 ContenutoStruct(contenuto: "Doing this can reduce stress and make you happier and more pleased.\nSet deadlines, setting deadlines will increase your motivation and give you feedback on what works and what doesn’t. Give yourself a reward, when you reach a goal don't forget to reward yourself, this will make you happier and more motivated to take the next step.", titolo: "2. Divide your biggest goals", righe: 28)]
        )]
        
        static var textOnViewController = ["Trace and"," fill your sign"," shape.","Trace it!"]
    
        
        static var textOnPrimaTutorial = ["Hi,","This is Skinsugi!","We are glad that you came to us.","What's your name?","My name is..","Reflect, we don’t need your answer.","Last step","How do you feel about your sign?\nHow do you think others see it?","Tell us what inspires you the most."]
        
        static var textOnSecondaTutorial = ["By telling the story of your indelible sign you can change the way you look at your body and others’s bodies.","will take care of your story","Find out how to create your unique masterpiece.","Time to explore","Activities and Insights","We also provided a lot of interesting tips and inspirational contents for you!","Before starting","#skinsugi is a place to share"]
        
        static var textOnSharePage = ["Sharing your emotions with others is \nvery important for your ","emotional state,\n","it ","increases self-esteem",", decreases insecurities, and makes you understand that ","you are not alone",", ever.","\nWhat are you waiting for?\nTell your story and share it on ","Instagram"," with the hashtag ","or send it to us anonymously, you can be inspiring even without showing your name! ","Tell your story behind your indelible sign here…  - ","(max 1100 characters)","Your description was copied successfully","Be an inspiration","Not now","Copy caption","(We will publish it on our profile)"]
        
        static var textOnGenerateAgain = ["The pattern in the large circle describes\n","your personality ","and the color inside \nrepresents ","the way you want to look\n","from the outside.\nThe two shapes on the outside recount\n","the way you would like to be ","and the \ntexture inside represents ","the perception you have of your sign",", that is in gold and occupies the center of the image, as ","Kintsugi art ","teaches!","Circle",": empathic - sociable","Zig Zag",": creative - aspiring","Triangle",": leader - focused","Rectangle",": curious - confused","Square", ": careful - analytic","Your Masterpiece was copied successfully","yourmasterpiece-1"]
    
        static var lingua = ["English","Italian","Language"]
    
        static var textOnSettings = ["Language","About us","Settings"]
    
    static var textPostCollage = ["Create your Masterpiece!","navInsta8","navInsta","Submitted","Thank you for sharing your masterpiece with us!"]
    
    static var textCollage = ["This is your #skinsugi!","Discover more about your Masterpiece","Discover more about Kinsugi"]
        
}

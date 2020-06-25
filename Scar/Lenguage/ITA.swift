//
//  ITA.swift
//  Scar
//
//  Created by Antonio Cimino on 20/06/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class ITA: UIViewController{
    
    static var lingua = ["English","Italian"]
    
        static var textOnSettings = ["Language","About us"]

         static var goToLink: [String] = ["SeeMoreIta","SeeMoreMoviesIta","SeeMoreArticleIta","SeeMoreBooksIta","SeeMoreInspiringPeopleIta","SeeMorePodcastIta"]
            
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
                    "readyViolaIta", //Bottone ready schermata tutorial 2
                    "startIta", //Bottone start schermata tutorial
                    "StartNIta", //Bottone start schermata tutorial disailitato
                    "doneIta", //Bottone done schermata tutorial
                    "DoneNIta", //Bottone done schermata tutorial disabilitato
                    "Let'sgoIta", //Bottone let's go schermata tutorial
                    "proceed", //Bottone procedere Collage
                    "share (2)", //Bottone schare Generate Again
                    "generate", //Bottone generate Generate Again
                    "share", //Bottone schare Share page
                    "shareanonymously (2)",//Bottone schare anonimo Share page
                ]

                static var insights = ["TEDx","Movies and Series","Articles","Books","Inspiring People","Podcasts"]
                
               static var textOnCollage = [
                    "Il pattern nel cerchio più grande descrive\n",
                    "la tua personalità",
                    "e il colore al suo interno  \nrappresenta",
                    "il modo in cui\n","vuoi apparire. \n\nLe due forme geometriche all’esterno raccontano\n",
                    "il modo in cui vorresti essere","e la \n texture al loro interno rappresenta ",
                    "la \n percezione che hai del tuo segno indelebile, ",
                    "che\n è in oro ed occupa il centro \n dell’immagine, come ",
                    "insegna l’arte ","del Kintsugi! ",
                    "Masterpiece salvato!",
                    "Il tuo Masterpiece è stato copiato correttamente"
                ]
                    
                    static var textOnChooseShape = [
                        "Quale di queste forme rappresenta ",
                        "la tua più profonda essenza?","Quadrato \n",
                        "attenzione - precisione",
                        "Rettangolo \n",
                        "curiosità - confusione",
                        "Triangolo \n",
                        "leadership - determinazione",
                        "Cerchio \n",
                        "empatia - socievolezza",
                        "Zig zag \n",
                        "creatività - ambizione"
                    ]
                    
                    static var textOnChooseShape2 = [
                        "Quale di queste forme rappresenta",
                        "il modo in cui ti piacerebbe essere?",
                        "Quadrato \n",
                        "attenzione - precisione",
                        "Rettangolo \n",
                        "curiosità - confusione",
                        "Triangolo \n",
                        "leadership - determinazione",
                        "Cerchio \n",
                        "empatia - socievolezza",
                        "Zig zag \n",
                        "creatività - ambizione"
                    ]
                    
                    static var Shape = [
                        "Quadrato",
                        "Rettangolo",
                        "Triangolo",
                        "Cerchio",
                        "Zig zag"
                    ]
                    
                    static var textOnChoosePalette = [
                        "Quale tra queste palette di colori utilizzi\n",
                        "più spesso nel vestirti?",
                        "Colori caldi",
                        "Colori freddi",
                        "Colori neutri"
                    ]

                    static var Palette = [
                        "Caldi",
                        "Freddi",
                        "Neutri"
                    ]
                    
                    static var textOnCaricaImage = [""]
                    
                    static var textOnLaunch = [""]
                    
                    static var textOnChooseTexture = [
                        "Tocca ",
                        "il tuo segno indelebile, quale di\n queste textures ",
                        "ti ricorda al tatto? ",
                        "Mare",
                        "Cratere",
                        "Fibra tessile",
                        "Marmo",
                        "Legno"
                    ]
                    
                    static var Texture = [
                        "Mare",
                        "Cratere",
                        "Fibra tessile",
                        "Marmo",
                        "Legno"
                    ]
                    
                    static var textOnLPassword = [""]
                    
                    static var textOnPostCollage = [""]
                    
                    static var Schermata1weeklyInfo = [
                        WeeklyStruct(
                        title:
                            "Leggi un buon libro",
                        descr:
                            "Sapevi che la lettura riduce il livello di stress, migliora l’umore e fa molto bene alla tua mente? Che cosa aspetti? Scegli qualcosa che ti piace e inizia a leggere..",
                        image:
                            "Settimana 1"
                        ),
                        WeeklyStruct(
                        title:
                            "Segui una passione, coltiva un hobby",
                        descr:
                            "Se ami qualcosa, perché non cominciare esattamente ora? Qui non c'è spazio per le critiche, esisti tu e le tue passioni.",
                        image:
                            "Settimana 2"
                        ),
                        WeeklyStruct(
                        title:
                            "Prova nuove cose ed esci dalla tua zona di comfort",
                        descr:
                            "Sapevi che una zona di comfort è un limite autoimposto che una persona rifiuta di superare? Che cosa aspetti? Prova nuovi sapori, indossa nuovi colori e fai qualcosa che non hai mai fatto prima!",
                         image:
                            "Settimana 3"
                        ),
                        WeeklyStruct(
                        title:
                            "Sii consapevole dei tuoi limiti",
                        descr:
                            "A. Einstein disse: \"Se si giudica un pesce dalla sua abilità di arrampicarsi sugli alberi, passerà tutta la sua vita a credersi stupido.\" Accetta i tuoi limiti ma dopo un fallimento sii sempre pronto a rimetterti in gioco.",
                        image:
                            "Settimana 4"
                        ),
                        WeeklyStruct(
                        title:
                            "Elenca ciò che ami di te",
                        descr:
                            "Oggi pensa a ciò che ami di più del tuo corpo e ricorda che non esiste null’ altro al mondo esattamente come te. Le nostre unicità ci rendono speciali!",
                        image:
                            "Settimana 5"
                        ),
                        WeeklyStruct(
                        title:
                            "Non perdere il contatto con la natura",
                        descr:
                            "Sapevi che il contatto con la natura influenza il nostro rapporto con le altre persone e ci rende meno irritabili? Oggi spegni il telefono per un po' e goditi l’aria aperta. ",
                        image:
                            "Settimana 6"
                        ),
                        WeeklyStruct(
                        title:
                            "Circondati di persone positive con cui parlare",
                        descr:
                            "Oggi cerca di evitare le persone critiche e negative che hanno un problema per ogni soluzione. Allontana la negatività, circondati di persone positive, prepara dei pancakes e divertiti!",
                        image:
                            "Settimana 7"
                        ),
                        WeeklyStruct(
                        title:
                            "Fai una lista dei tuoi successi",
                        descr:
                            "Oggi fai un elenco di tutti gli ostacoli che hai superato, scoprirai che il limiti che pensavi di avere non hanno nemmeno la metà della forza che possiedi!",
                        image:
                            "Settimana 8"
                        )
                    ]
                    
                    static var Schermata1frasiDeStoCazzo : [String] = [
                        "Grande! Il primo passo è fatto!",
                        "Oggi sei in ottima forma!",
                        "Continua e non fermarti!",
                        "Wow! Sei quasi a metà strada.",
                        "Continua così, vai molto bene!",
                        "Non mollare, hai quasi finito.",
                        "Continua così!" ,
                        "Sei veramente in gamba.",
                        "Forza! Ne manca solo uno." ,
                        "Ben fatto! A domani.",
                        "Inizia le attività e completale!!"
                    ]
                    
                    static var Schermata1Saluti = [
                        "Buon pomeriggio,",
                        "Buonasera,",
                        "Buongiorno,"
                    ]
                    
                    static var Schermata2structInsENG = [ins(
                    pod:[
                        Cont(
                        image:
                            "insight1",
                        title:
                            "How to Build\nSelf Confidence",
                        descr:
                            "CeCe Olisa è un'esperta di body positivity, divenuta popolare grazie ai video di allenamento sul suo canale YouTube con i quali incoraggia le donne a fare esercizio fisico perché amano il proprio corpo e non perché lo odiano.",
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
                            "Taryn Brumfitt in questo talk ci fa capire che non è affatto il nostro corpo ad essere sbagliato ma lo è la nostra prospettiva e gli irrealistici standard di bellezza che ci circondano.",
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
                            "Robert Hodge è consigliere politico e autore del libro \"Ugly\". Con grande umorismo racconta dell'amore, della vita e soprattutto dell'imperfezione e del dolore che hanno caratterizzato la sua esperienza personale.",
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
                            "Christina è una scrittrice, speaker e performer. A soli diciannove anni è diventata una delle più giovani sopravvissute al tumore del pancreas in tutto il mondo. Ha affrontato la morte, più di una volta ed ecco cosa ha imparato.",
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
                            "Michelle è la creatrice della campagna #ScarredNotScared, una community che insegna alle donne ad apprezzare il proprio corpo e le proprie cicatrici. Cambiare la relazione con il nostro corpo può cambiare radicalmente la nostra vita.",
                        fonte:
                            "Michelle Elman | TEDxCoventGardenWomen",
                        link:
                            "https://www.youtube.com/watch?v=d88uXMWSVfU"),
                        Cont(image:
                            "insight6",
                        title:
                            "Yes, my scars do define me",
                        descr:
                            "Gebran è uno studente di marketing e pubblicità e il suo sogno più grande è quello di diventare uno scrittore. Gebran dice che la nostra vita è come una raccolta di storie ma ... ci siamo mai chiesti cosa rende davvero unica una storia?",
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
                            "Sophie Mayanne è una fotografa, il suo stile è inconfondibile e straordinario in \"Behind The Scars\", un progetto che celebra cicatrici di tutte le forme e dimensioni e le storie incredibili che si celano dietro di esse.",
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
                            "Bianca è una poetessa, compositrice digitale e attivista culturale. In questo discorso così intimo condivide le sue intuizioni sull'autoconsapevolezza e l'importanza dell'allenamento per la salute mentale.",
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
                            "Cosa ti rende unico? In questo discorso Brian Little, un professore di ricerca di Cambridge, analizza e ridefinisce gli schemi della nostra personalità e suggerisce i modi in cui è possibile trasformare noi stessi.",
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
                            "Jonny è un autore e illustratore canadese. In questo discorso afferma che raccontare storie ed aprirci alla solitudine e alla paura può aiutarci a trovare conforto e a sentirci meno soli.",
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
                            "Tutti noi abbiamo il potere di coltivare fiducia in noi stessi, ma qual è la sua origine e come possiamo ottenerne sempre di più? In questo video, ci sono tre semplici suggerimenti per aumentare la fiducia in te stesso.",
                        fonte:
                            "TED-Ed",
                        link:
                            "https://www.youtube.com/watch?v=l_NYrWqUR40")],
                        well:[
                        Cont(
                        image:
                            "insight3",
                        title:
                            "La teoria del \ntutto",
                        descr:
                            "Il film descrive i momenti più significativi della vita Stephen Hawking, il noto cosmologo che nonostante la sua malattia non ha mai smesso di dimostrare al mondo la sua genialità.",
                        fonte:
                            "",
                        link:
                            "https://www.youtube.com/watch?v=Salz7uGp72c"
                        ),
                        Cont(image: "insight3", title:"\nAmore a prima svista", descr: ",Hal, è un uomo dal carattere superficiale, corteggia solo donne belle e giovani ma un giorno, attraverso l'ipnosi, un guru lo aiuta ad imparare ad apprezzare anche la bellezza interiore.", fonte:"", link: "https://www.youtube.com/watch?v=ZZWvgEOoV3U"),
                        Cont(image: "insight4", title:"Orange Is The\nNew Black", descr: "Questa serie televisiva, che vede come protagoniste un gruppo di donne detenute in un carcere federale femminile, si propone di invertire ogni tipo di stereotipo offrendo personaggi tutti diversi e portatori di un corpo unico e speciale.", fonte:"", link: "https://www.youtube.com/watch?v=vY0qzXi5oJg"), Cont(image: "insight4", title:"\nThe Shape Of Water", descr: "Amazement, beauty, horror and a strong dramatic component on which the love between different, between the last and different; an original film, visually powerful and emotionally linked to the old dark tales of the \"monster of the black lagoon\".", fonte:"", link: "https://www.youtube.com/watch?v=XFYWazblaUA"),
                        Cont(image: "insight3", title:"Unbreakable\nKimmy Schmidt", descr: "Questa divertentissima sitcom fornisce tanti spunti di riflessione su temi delicati come razza, sessualità e body positivity in particolar modo attraverso l'umanità di Titus e Kimmy.", fonte:"", link: "https://www.youtube.com/watch?v=Hl4bOuGNMwo"), Cont(image: "insight4", title:"\nPOSE", descr: "American drama television series about New York City's African-American and Latino LGBTQ and gender-nonconforming ballroom culture scene in the 1980s. Is this enough?", fonte:"", link: "https://www.youtube.com/watch?v=_t4YuPXdLZw"),
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
                        Cont(image: "Erin_Stewart", title:"\nErin Stewart", descr: "Erin grew up in the woods of Virginia catching fireflies. She loves using her background in journalism to research and write fiction based on real life. A heart failure survivor and adoptive mother, she believes life throws plot twists and people in our path for a reason, always. Scars Like Wings is her debut novel.", fonte:"Author", link: "https://www.instagram.com/erin_n_stewart/"),
                        Cont(image: "InsightI1", title:"\nSuzon Lagarde", descr: "Suzon is an emerging artist based in London. She creates little worlds in paint; observations from life meeting with treasured memories and dreamt presences.", fonte:"Artist", link: "https://www.instagram.com/suzonlagarde/"),
                        Cont(image: "InsightI3", title:"\nAngela Bianchi", descr: "Angela has a scar too. As a personal image consultant she thoughtfully creates and personalizes experiences to help people become independent through personal styling and body acceptance.", fonte:"Image Consultant", link: "https://www.instagram.com/angelabianchivirgoimage/"),
                        Cont(image: "InsightI5", title:"\nFariha Róisin", descr: "Fariha is an Australian-Canadian multi-disciplinary artist based in Brooklyn. With an interest in her wellness, Muslim identity, race, self-care pop culture and film she has written for The New York Times, Al Jazeera, The Guardian, Vice, Fusion, Village Voice and others.", fonte:"Artist, writer, editor", link: "https://www.instagram.com/fariha_roisin/"),
                        Cont(image: "InsightI4", title:"\nSarah Jean", descr: "Sarah is a poet,performer and a photographer. Her (re)markable project is an in inclusive photographic project born with the aim of documenting stories and scars in an extraordinarily original way.", fonte:"Poet, performer, photographer", link: "https://www.instagram.com/remarkableproject/"),
                        Cont(image: "InsightI7", title:"\nSamanta Bullock", descr: "Samanta has dedicated her life to improving the visibility of disabled people in the fashion industry and enhancing the clothing that is available. She has been a wheelchair user model from an early age and works as an advocate for inclusion within the fashion industry. She is also a ParaPan Am Doubles Silver medalist in wheelchair tennis.", fonte:"Model, Paralympian", link: "https://instagram.com/samantabullock?igshid=1al7prymihtry"),
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
                    
                    static var textOnTakePicture = ["Disegna la forma ","del tuo segno indelebile, o aiutati scattando una","foto ","in modo da ","tracciarne meglio i contorni.","Non preoccuparti",", la foto che scatterai non verrà salvata!"]
                    
                    static var ViewControllerInitialdati = [ActivityStruct(
                        attivita1:[
                            ContenutoStruct(contenuto: "Specchiarsi è uno dei regali più belli che tu possa farti. Ricorda che più usi il tuo specchio per complimentarti e supportarti, più profonda e piacevole sarà il rapporto con il tuo corpo.\nEcco tre semplici passaggi per padroneggiare la tua immagine!" , titolo: "Lo specchio è il tuo migliore alleato", righe: 13), ContenutoStruct(contenuto:"L'uso di uno specchietto portatile ti consente di avvicinarti alla parte più intima di te. Assicurati solo di essere in un posto tranquillo dove nessuno può disturbarti!" , titolo: "1. Procurati uno specchietto portatile", righe: 20), ContenutoStruct(contenuto: "Inizia a stabilire un contatto visivo con te stesso e non preoccuparti se all'inizio ti senti a disagio.", titolo: "2. Stabilisci il contatto visivo", righe: 26), ContenutoStruct(contenuto: "Ora inizia una conversazione con te stesso. È importante concedersi piccoli messaggi positivi dicendo ad alta voce tutto ciò che ti fa sentire davvero bene!\n \n", titolo: "3. Concediti messaggi positivi",righe: 33)],
                        attivita2:
                            [ContenutoStruct(contenuto: "Prendersi del tempo per scrivere un diario potrebbe aiutarti a migliorare l’immagine che hai del tuo corpo. L’ attività di scrittura è spesso utilizzata come forma di terapia per tutti coloro che hanno una scarsa autostima e vivono con disagio il rapporto con il proprio corpo.\n", titolo: "L’importanza della scrittura", righe: 12),
                            ContenutoStruct(contenuto: "Ognuno ha i suoi orari: se sei mattiniero, puoi scrivere sul tuo diario al mattino, ma se sei un nottambulo, scegli di aggiornarlo la sera.", titolo: "1. Scegli il momento adatto a te", righe: 19),
                            ContenutoStruct(contenuto: "Ricorda che puoi cambiare te stesso ma non gli altri! Non dar retta a ciò che le persone potrebbero dire o pensare. Sii te stesso e asseconda sempre ciò che senti.", titolo: "2. Allontana la negatività", righe: 26),
                            ContenutoStruct(contenuto: "Il tuo corpo merita rispetto, attenzione e amore. Guardati allo specchio, apprezza tutte le tue imperfezioni e annotale nel tuo diario.", titolo: "3. Scrivi di te in modo positivo", righe: 33),
                            ContenutoStruct(contenuto: "Per capire meglio te stesso, tieni traccia quotidianamente dei tuoi progressi complessivi. Un modo affidabile in cui puoi farlo è annotare il tuo stato d’animo di ogni singolo giorno.", titolo: "4. Tieni traccia del tuo stato d’animo", righe: 40),
                            ContenutoStruct(contenuto: "Probabilmente dopo un po’ di tempo la tua passione per la scrittura potrebbe svanire, ma non preoccuparti. Ricorda che: la costanza è la chiave. Un modo utile per non arrendersi è concederti una ricompensa per ogni sessione di scrittura che porti a termine.", titolo: "5. Non arrenderti mai!", righe: 47)],
                        attivita3:
                            [ContenutoStruct(contenuto: "Se non hai un buon rapporto con il tuo corpo e stai cercando di aumentare la tua autostima lasciarsi ispirare da qualcuno che ha avuto un’esperienza simile alla tua potrebbe essere la spinta iniziale di cui hai bisogno per sentirti meglio con te stesso.\n Un modo semplice e divertente per lasciarsi ispirare dagli altri è quello di raccogliere citazioni o storie della tua celebrità o Influencer preferita ma anche di autori celebri o delle persone che fanno parte della tua quotidianità.\n", titolo: "Lasciarsi ispirare è importante", righe: 15),
                            ContenutoStruct(contenuto: "• Salva le tue citazioni o storie preferite per il tuo prossimo giorno di bassa autostima; \n• Scrivile su note adesive colorate;\n• Condividile con i tuoi amici;\n •Leggile ad alta voce difronte allo specchio;\n• Mettile in pratica.", titolo: "Vediamo insieme come lasciarsi ispirare", righe: 25)],
                        attivita4:
                            [ContenutoStruct(contenuto: "Prova a passeggiare all’aria aperta per almeno 30 minuti. Se ritieni che sia troppo faticoso non preoccuparti. Comincia con piccole passeggiate regolari di 10 minuti per almeno tre volte al giorno e poi passa gradualmente a sessioni più lunghe.Le persone che passeggiano con regolarità traggono da quest’esercizio un grande senso di benessere, si sentono più rilassate e affrontano la vita con più positività.\n\n Camminare richiede un’ attrezzatura minima e può essere fatto in qualsiasi momento della giornata … quindi niente scuse!\n", titolo: "Passeggiare è fondamentale per il tuo benessere", righe: 25)],
                        attivita5:
                            [ContenutoStruct(contenuto:"La meditazione è il miglior metodo per conoscere te stesso a fondo, può essere usata come una semplice tecnica di rilassamento o come strumento per la crescita della consapevolezza e della spiritualità.\nEcco alcuni piccoli consigli che ti aiuteranno lungo il percorso:", titolo: "Crea il tuo mantra", righe: 12),
                            ContenutoStruct(contenuto: "Concentrati sulla respirazione e libera la mente da pensieri inutili.", titolo: "1. Concentrati sulla respirazione", righe: 17),
                            ContenutoStruct(contenuto: "Cerca di essere consapevole della postura che adotti, focalizza tutta la tua attenzione sul tuo corpo.", titolo: "2. Controlla la tua postura", righe: 22),
                            ContenutoStruct(contenuto: "Gli occhi non devono essere né aperti, per evitare distrazioni, né chiusi, per evitare di addormentarsi.", titolo: " 3. Socchiudi gli occhi", righe: 28),
                            ContenutoStruct(contenuto: "Per aumentare la concentrazione sul respiro puoi usare un mantra, è una frase breve facile da ripetere.", titolo: " 4. Usa un mantra", righe: 34),
                            ContenutoStruct(contenuto: "È importante dedicare abbastanza tempo a questa pratica. Sarebbe ideale fare due sessioni di meditazione, la prima al mattino e la seconda la sera. La meditazione non è una pratica occasionale, è molto importante meditare ogni giorno, anche solo per pochi minuti.", titolo: "5. Trova il tuo tempo ideale", righe: 42)],
                        attivita6:
                            [ContenutoStruct(contenuto: "\n\nL'esercizio fisico svolto regolarmente può avere un impatto positivo sulla tua vita quotidiana. Ma non preoccuparti, per ottenere i risultati che desideri non devi torturarti con esercizi troppo complessi. Puoi fare progressi anche rispettando i tuoi tempi e le tue condizioni.\nVediamo insieme alcuni esercizi da fare::", titolo: "Quali sono gli esercizi che influenzano il tuo umore in modo positivo?\n", righe: 14),
                            ContenutoStruct(contenuto: "Lo yoga aiuta a sviluppare una consapevolezza e una conoscenza più profonda di sé attraverso  una focalizzazione interiore e una calma profonda.", titolo: "1. Yoga", righe: 21),
                            ContenutoStruct(contenuto: "Il Pilates ti insegna a sviluppare una maggiore consapevolezza del tuo corpo, a correggere la tua postura e a migliorare la precisione dei tuoi movimenti.", titolo: "2. Pilates", righe: 28),
                            ContenutoStruct(contenuto: "Il Tai Chi è una disciplina di origini antiche, molto vicina al mondo delle arti marziali, utile per rafforzare il carattere, l'elasticità dei muscoli e il miglioramento della postura.", titolo: "3. Tai Chi", righe: 34)],
                        attivita7:
                            [ContenutoStruct(contenuto: "Ricordi quando è stata l'ultima volta che hai riso di gusto? Ridere fa bene alla salute e genera reazioni positive per il tuo corpo.\n\nE se pensi di non aver alcun motivo per ridere, inventalo, cerca qualcosa di divertente come una buona commedia o uno scherzo! Tutto il tuo corpo ti ringrazierà!\n\nQui troverai tre buone ragioni per cominciare a ridere!\n\n- Ridere migliora la produttività sul lavoro e un sorriso può creare legami nel team, ridurre il livello di stress e aiutarti a risolvere i problemi con maggiore lucidità.\n\n- Sorridere ti rende creativo, più sei rilassato, più la tua mente è incline alla creatività.\n\n- Ridere ti permette di dormire meglio, infatti concedersi una sana risata prima di dormire aumenta la produzione di melatonina nel corpo.\n\n…quindi ridi senza moderazione!", titolo: "C’è sempre un buon motivo per ridere", righe: 32)],
                        attivita8:
                            [ContenutoStruct(contenuto: "La luce solare apporta notevoli benefici alla tua mente, migliora l’umore e riduce lo stress. I vantaggi sono molti ma … Qual è il miglior modo per esporsi al sole mentre si sta a casa?\n\n Se hai un balcone puoi utilizzare una comoda sedia a sdraio e cercare di trascorrere del tempo all’aperto ogni volta che ne hai la possibilità.\n\nE se invece non hai un balcone? Prova a identificare le ore del giorno in cui la luce entra direttamente dalle tua finestra. Aprila, siediti a favore della luce e sfrutta ogni momento di pausa per esporti al sole!", titolo: "Quali sono i benefici della luce solare al tuo corpo?", righe: 25)],
                        attivita9:
                                [ContenutoStruct(contenuto: "YLa tua mente è l'unico strumento utile ed essenziale per gestire e pianificare i pensieri, le aspirazioni e gli obiettivi. Se pianifichi i tuoi obiettivi, sarà molto più facile ottenere i risultati che desideri raggiungere.\nVediamo insieme in che modo gestire le difficoltà e organizzare i pensieri:", titolo: "Pianifica, gestisci e raggiungi!", righe: 12),
                             ContenutoStruct(contenuto: "Classifica gli obiettivi in base all'importanza che hanno per te e calcola i passi che devi compiere per raggiungerli.", titolo: "1. Fai un elenco di tutti gli obiettivi", righe: 18),
                             ContenutoStruct(contenuto: "In questo modo ridurrai lo stress e sarai più felice e soddisfatto.\nImpostando le scadenze aumenterà la tua motivazione, questo metodo ti fornirà i giusti feedback su ciò che funziona e cosa no. Regalati una ricompensa, quando raggiungi un obiettivo non dimenticare di premiarti, questo ti renderà più felice e più motivato a fare il passo successivo.", titolo: "2. Dividi gli obiettivi più grandi", righe: 28)]
                    )]
                    
                    static var textOnViewController = ["Traccia e"," riempi la forma"," del tuo segno."]
                    
                    static var textOnPrimaTutorial = ["Ciao,",]
                    
                    static var textOnSecondaTutorial = ["Raccontando la storia del tuo segno indelebile puoi cambiare il modo in cui guardi il tuo corpo e quello degli altri.","si prenderà cura della tua storia","Scopri come creare il tuo Skinsugi masterpiece.","Tempo di esplorare”,”Attività e Insights","Qui troverai consigli interessanti e contenuti sempre nuovi!"]
                    
                    static var textOnSharePage = ["Condividere le tue emozioni con gli altri \nè fondamentale per la tua\n","emotività ","rafforza l autostima",",allontana \nle insicurezze, e t insegna \nche ","non sei solo",", mai.\n\n","Cosa stai aspettando?\nRacconta la tua storia e condividila su ","Instagram\n","con l  hashtag ","o invialo a noi\nin forma anonima puoi essere d ispirazione\nanche senza mostrare il tuo nome! ","Scrivi la storia che si cela dietro il tuo segno indelebile…  - ","(max 1100 characters)","La tua storia è stata copiata correttamente"]
                    
                    static var textOnGenerateAgain = ["Il pattern nel cerchio più grande descrive\n","la tua personalità","e il colore al suo interno \nrappresenta ","il modo in cui vuoi apparire\n","dall’esterno.\nTLe due forme geometriche all’esterno raccontano\n","il modo in cui vorresti essere","e la \ntexture al loro interno rappresenta","la \npercezione che hai del tuo segno indelebile",", che\nè in oro ed occupa il centro \ndell’immagine, come ","l’arte del Kintsugi","insegna!","Cerchio",": empatia - socievolezza","Zig Zag",": creatività - ambizione","Triangolo",": leadership - determinazione","Rettangolo",": curiosità - confusione","Quadrato", ": attenzione - precisione","Il tuo Skinsugi Masterpiece è stato copiato correttamente"]
                    
                    
                    
                }

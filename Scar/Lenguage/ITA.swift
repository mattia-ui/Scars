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
            
                static var sfondiNav: [String] = ["MirrorWorkIta","TheJournalIta","BeInspiredIta","TakeAWalkIta","MeditateIta","DoExerciseIta","ASmileIta","DailyGoalsIta","EnjoySunlightIta"]
            
                static var allCardsImages: [String] = ["Card1pIta","Card2pIta","Card3pIta","Card4pIta","Card5pIta","Card6pIta","Card7pIta","Card8pIta","Card9pIta"]
            
                static var button = [
                    "submit azzurroIta", //Bottone elabora disegno schermata disegno
                    "submitnoIta", //Bottone elabora disegno schermata disegno disabilitato
                    "ResetIta", //Bottone reset schermata disegno
                    "letsgoazzurroIta", //Bottone let's go post Collage
                    "nextazzurroIta", //Bottone nex go schermata Choose shape/Choose shape2/Choose palette/Choose texture
                    "nextazzurronoIta", //Bottone nex schermata Choose shape/Choose shape2/Choose palette/Choose texture disabilitato
                    "noIta", //Bottone no schermata Choose texture
                    "yesIta", //Bottone no schermata Choose texture
                    "readyViolaIta", //Bottone ready schermata tutorial 2
                    "startIta", //Bottone start schermata tutorial
                    "StartNIta", //Bottone start schermata tutorial disailitato
                    "doneIta", //Bottone done schermata tutorial
                    "DoneNIta", //Bottone done schermata tutorial disabilitato
                    "Let'sgoIta", //Bottone let's go schermata tutorial
                    "proceedIta", //Bottone procedere Collage
                    "share (2)Ita", //Bottone schare Generate Again
                    "generateIta", //Bottone generate Generate Again
                    "shareIta", //Bottone schare Share page
                    "shareanonymously (2)Ita",//Bottone schare anonimo Share page
                ]

                static var insights = ["TEDx","Film e serie Tv","Articoli","Libri","Inspiring People","Podcasts"]
                
               static var textOnCollage = [
                    "Il pattern nel cerchio più grande descrive ",
                    "la tua personalità ",
                    "e il colore al suo interno rappresenta ",
                    "il modo in cui ","vuoi apparire. \n\nLe due forme geometriche all’esterno raccontano ",
                    "il modo in cui vorresti essere ","e la texture al loro interno rappresenta ",
                    "la percezione che hai del tuo segno indelebile, ",
                    "che è in oro ed occupa il centro dell’ immagine, come ",
                    "insegna l’arte ","del Kintsugi! ",
                    "Masterpiece salvato!",
                    "Il tuo Masterpiece è stato copiato correttamente"
                ]
                    
                    static var textOnChooseShape = [
                        "Quale forma rappresenta ",
                        "la tua\npiù profonda essenza?","Quadrato \n",
                        "cautela - precisione",
                        "Rettangolo \n",
                        "curiosità - caos",
                        "Triangolo \n",
                        "leadership - tenacia",
                        "Cerchio \n",
                        "empatia - socialità",
                        "Zig zag \n",
                        "estro - ambizione"
                    ]
                    
                    static var textOnChooseShape2 = [
                        "Quale forma rappresenta",
                        "il modo in cui ti piacerebbe essere?",
                        "Quadrato \n",
                        "cautela - precisione",
                        "Rettangolo \n",
                        "curiosità - caos",
                        "Triangolo \n",
                        "leadership - tenacia",
                        "Cerchio \n",
                        "empatia - socialità",
                        "Zig zag \n",
                        "estro - ambizione"
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
                        "il tuo segno, quale di queste\ntextures ",
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
                            "Sapevi che la lettura riduce il livello di stress, migliora l’umore e fa molto bene alla tua mente? Che cosa aspetti? Scegli qualcosa che ti piace e inizia a leggere.",
                        image:
                            "Weekly1"
                        ),
                        WeeklyStruct(
                        title:
                            "Segui una passione, coltiva un hobby",
                        descr:
                            "Se ami qualcosa, perché non cominciare esattamente ora? Qui non c'è spazio per le critiche, esisti tu e le tue passioni.",
                        image:
                            "Weekly2"
                        ),
                        WeeklyStruct(
                        title:
                            "Prova nuove cose ed esci dalla tua zona di comfort",
                        descr:
                            "Sapevi che una zona di comfort è un limite autoimposto che una persona rifiuta di superare? Che cosa aspetti? Prova nuovi sapori, indossa nuovi colori e fai qualcosa che non hai mai fatto prima!",
                         image:
                            "Weekly3"
                        ),
                        WeeklyStruct(
                        title:
                            "Sii consapevole dei tuoi limiti",
                        descr:
                            "A. Einstein disse: \"Se si giudica un pesce dalla sua abilità di arrampicarsi sugli alberi, passerà tutta la sua vita a credersi stupido.\" Accetta i tuoi limiti ma dopo un fallimento sii sempre pronto a rimetterti in gioco.",
                        image:
                            "Weekly4"
                        ),
                        WeeklyStruct(
                        title:
                            "Elenca ciò che ami di te",
                        descr:
                            "Oggi pensa a ciò che ami di più del tuo corpo e ricorda che non esiste null’ altro al mondo esattamente come te. Le nostre unicità ci rendono speciali!",
                        image:
                            "Weekly5"
                        ),
                        WeeklyStruct(
                        title:
                            "Non perdere il contatto con la natura",
                        descr:
                            "Sapevi che il contatto con la natura influenza il nostro rapporto con le altre persone e ci rende meno irritabili? Oggi spegni il telefono per un po' e goditi l’aria aperta. ",
                        image:
                            "Weekly6"
                        ),
                        WeeklyStruct(
                        title:
                            "Circondati di persone positive con cui parlare",
                        descr:
                            "Oggi cerca di evitare le persone critiche e negative che hanno un problema per ogni soluzione. Allontana la negatività, circondati di persone positive, prepara dei pancakes e divertiti!",
                        image:
                            "Weekly7"
                        ),
                        WeeklyStruct(
                        title:
                            "Fai una lista dei tuoi successi",
                        descr:
                            "Oggi fai un elenco di tutti gli ostacoli che hai superato, scoprirai che i limiti che pensavi di avere non hanno nemmeno la metà della forza che possiedi!",
                        image:
                            "Weekly8"
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
                        "Ben fatto! A domani." ,
                        "Inizia le attività e completale!",
                        "Forza! Ne manca solo uno."
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
                            "Robert Hodge è un consigliere politico e autore del libro \"Ugly\". Con grande umorismo racconta dell'amore, della vita e soprattutto dell'imperfezione e del dolore che hanno caratterizzato la sua esperienza personale.",
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
                        Cont(image: "insight3", title:"\nAmore a prima svista", descr: "Hal è un uomo dal carattere superficiale, corteggia solo donne belle e giovani ma un giorno, attraverso l'ipnosi, un guru lo aiuta ad imparare ad apprezzare anche la bellezza interiore.", fonte:"", link: "https://www.youtube.com/watch?v=ZZWvgEOoV3U"),
                            Cont(image: "insight4", title:"Orange Is The\nNew Black", descr: "Questa serie televisiva, che vede come protagoniste un gruppo di donne detenute in un carcere federale femminile, si propone di invertire ogni tipo di stereotipo offrendo personaggi tutti diversi e portatori di un corpo unico e speciale.", fonte:"", link: "https://www.youtube.com/watch?v=vY0qzXi5oJg"), Cont(image: "insight4", title:"\nLa forma dell’acqua", descr: "Questo originalissimo film riesce a spiegare la complessità dell’amore con un linguaggio capace di lasciarci con il fiato sospeso, insegnandoci che l'amore non ha forma proprio come l'acqua.", fonte:"", link: "https://www.youtube.com/watch?v=XFYWazblaUA"),
                            Cont(image: "insight3", title:"Unbreakable\nKimmy Schmidt", descr: "Questa divertentissima sitcom fornisce tanti spunti di riflessione su temi delicati come razza, sessualità e body positivity in particolar modo attraverso l'umanità dei personaggi di Titus e Kimmy.", fonte:"", link: "https://www.youtube.com/watch?v=Hl4bOuGNMwo"), Cont(image: "insight4", title:"\nPOSE", descr: "Serie televisiva statunitense che offre un realistico sguardo sull'iconica cultura del ballo di New York che ha definito la comunità LGBT negli anni Ottanta.", fonte:"", link: "https://www.youtube.com/watch?v=_t4YuPXdLZw"),
                            Cont(image: "insight4", title:"\nGlow", descr: "Siamo negli anni Ottanta, un'aspirante attrice trova un'inaspettata opportunità di successo nel mondo del wrestling ma deve farsi strada tra personalità davvero eccentriche.", fonte:"", link: "https://www.youtube.com/watch?v=wnKEoXbBTEw"), Cont(image: "insight4", title:"\nHairspray", descr: "Nella Baltimora degli anni Sessanta, la giovane Tracy Turnblad fa un'audizione per uno show davvero importante, ottenendo la parte e combattendo gli stereotipi sulla percezione del suo corpo.", fonte:"", link: "https://www.youtube.com/watch?v=SUoG7mqCixI"),
                            Cont(image: "insight4", title:"\nUnorthodox", descr: "Esty vive infelicemente il suo matrimonio combinato e la comunità ultra-ortodossa in cui è nata, così decide di scappare via per scoprire la vita nel mondo esterno e respingere tutte le credenze con cui è stata cresciuta.", fonte:"", link: "https://www.youtube.com/watch?v=-zVhRId0BTw")],
                        mov:[
                            Cont(image: "InsightA6", title:"My scars: journey to body acceptance", descr: "\"La mia caduta accidentale nell' acqua bollente è avvenuta a casa, quando avevo appena tre anni. Sono finita in ospedale necessitando del supporto vitale. Ho subito molte operazioni ...\"", fonte:"From Sylvia Mac on mentalhealth.org", link: "https://www.mentalhealth.org.uk/stories/my-scars-journey-body-acceptance"),
                            Cont(image: "InsightA1", title:"How Scars Affect Psychosocial Well-Being", descr: "\"... è stato dimostrato che l'impatto psicosociale delle cicatrici causate dal trattamento dei tumori della pelle del viso colpisce i giovani, gli anziani, i maschi e le femmine…\"", fonte:"From Katie Delach on pennmedicine.org", link: "https://www.pennmedicine.org/news/news-blog/2015/may/beyond-skin-deep-how-scars-aff"),
                            Cont(image: "InsightA2", title:"Kintsugi: the art of precious scars", descr: "\"Riparando ceramiche rotte è possibile dare una nuova vita agli oggetti, i quali acquisiscono ancora più valore grazie alle loro crepe.\"", fonte:"Stefano Carnazzi on lifegate.com", link: "https://www.lifegate.com/people/lifestyle/kintsugi"), Cont(image: "InsightA4", title:"5 ways to build lasting self-esteem", descr: "Tutti sono favorevoli allo sviluppo dell' autostima, ma coltivarla può essere un processo sorprendentemente faticoso. Lo psicologo Guy Winch ci spiega perché...", fonte:"Guy Winch on ideas.ted.com", link: "https://ideas.ted.com/5-ways-to-build-lasting-self-esteem/"),
                            Cont(image: "InsightA5", title:"Learning to Accept (if Not Love) My Scar", descr: "La mia cicatrice è parte di me ormai da decenni, tuttavia la mia prima inclinazione a qualsiasi tipo di domanda a riguardo era quella di fingere di non aver sentito alcuna domanda…", fonte:"Steven Petrow on nytimes.com", link: "https://www.nytimes.com/2017/12/15/well/live/scar-surgery-cancer-shame-self.html"), Cont(image: "InsightA8", title:"Loving your body, scars and all", descr: "\"In una società ossessionata dai soliti canoni di bellezza le persone possono essere molto scettiche nei confronti delle cicatrici e di qualsiasi altro tipo di imperfezione percepita...\"", fonte:"Fascia on bodyinharmony.org", link: "https://www.bodyinharmony.org.uk/blog/loving-your-body-scars-and-all"), Cont(image: "InsightA7", title:"Why we should all embrace a new era of skin positivity", descr: "\"Proprio come il movimento del body positivity ha portato alla celebrazione di diverse forme e dimensioni del corpo, così la positività nei confronti della nostra pelle avrà il potere di ridefinire le nostre aspettative intorno a questa tematica.\"", fonte:"Stylist Beauty Team on stylist.co.uk", link: "https://www.stylist.co.uk/beauty/skin-positivity-adult-acne-problem-skin-spot-treatments-skincare/192307")],
                        art:[
                            Cont(image: "InsightB1", title:"Kintsugi: Embrace your imperfections…", descr: "Lo psicologo Tomás Navarro afferma che dovremmo affrontare la nostra vita con la filosofia dei maestri giapponesi del Kintsugi: non nascondere i nostri dolori ma valorizzarli in quanto prova della nostra forza.", fonte:"Tomás Navarro", link:"https://www.goodreads.com/book/show/39778473-kintsugi?from_search=true&from_srp=true&qid=uMd7LfvEqX&rank=1"),
                            Cont(image: "InsightB2", title:"\nScars Like Wings", descr: "Questa è la storia di Ava Gardener, una ragazza che rientra a scuola un anno dopo che un incendio l'ha lasciata seriamente sfigurata. Fortunatamente, Ava incontra Piper, un ragazzo che la fa sentire meno sola nella sua paura.", fonte:"Erin Stewart", link: "https://www.goodreads.com/book/show/39353216-scars-like-wings?from_search=true&from_srp=true&qid=24Fz9b7a8g&rank=1"), Cont(image: "InsightB3", title:"Resilient: How to Grow…", descr: "Abbiamo bisogno di resilienza ogni giorno e in ogni situazione. In questo libro, il Dr. Rick Hanson offre suggerimenti concreti, pratiche esperienziali ed esempi personali su come sviluppare dodici punti di forza vitali strettamente collegati al sistema nervoso.", fonte:"Rick Hanson", link: "https://www.goodreads.com/book/show/36025434-resilient?from_search=true&from_srp=true&qid=lnwlyH8xdW&rank=1"),
                            Cont(image: "InsightB5", title:"\nBeing in Your Body…", descr: "Oggi, la vergogna del corpo, rafforzata dagli standard di bellezza e dai social media, è incredibilmente difficile da estirpare. Questo libro insegna ad esplorare nuovi modi per ritrovare fiducia in se stessi supportando una più ampia definizione di bellezza.", fonte:"Fariha Róisín", link: "https://www.goodreads.com/book/show/43908904-being-in-your-body-guided-journal?from_search=true&from_srp=true&qid=QSvQEKQl8R&rank=1"),
                            Cont(image: "InsightB6", title:"The Body Keeps the Score…", descr: "Il trauma è un'esperienza che inevitabilmente lascia tracce nelle nostre menti e nelle nostre emozioni. In questo libro il Dr. Van der Kolk offre un nuovo interessante paradigma per la guarigione.", fonte:"Bessel Van der Kolk", link: "https://www.goodreads.com/book/show/18693771-the-body-keeps-the-score?from_search=true&from_srp=true&qid=zecUQxYO6Q&rank=1"),
                            Cont(image: "InsightB7", title:"Beyond Beautiful: A Practical Guide …", descr: "Un libro sulla fiducia in sé stessi in un'era di standard di bellezza tossici basati sui social media. Questo libro compatto offre idee realizzabili per accettare il tuo aspetto fisico e migliorare la fiducia in sé stessi.", fonte:"Anuschka Rees", link: "https://www.goodreads.com/book/show/40983157-beyond-beautiful?from_search=true&from_srp=true&qid=NiysEISPq8&rank=1"),
                            Cont(image: "InsightB8", title:"\nThe Comparison Cure…", descr: "Lucy Sheridan ha aiutato migliaia di persone e ora ha condensato tutta la sua conoscenza liberatrice in questo libro pieno di suggerimenti che ti aiutano a migliorare la tua autostima e la fiducia in se stessi.", fonte:"Lucy Sheridan", link: "https://www.goodreads.com/book/show/45860211-the-comparison-cure?from_search=true&from_srp=true&qid=yAH7MosCqK&rank=1"),
                            Cont(image: "InsightB9", title:"\nScars Left to Heal", descr: "Questo libro di memorie personali è un testo in cui Siobhan St. John condivide le esperienze di vita che l'hanno resa la donna forte che è oggi e che le hanno insegnato a sperare sempre e a non mollare mai nel mezzo delle tempeste.", fonte:"Siobhan St John", link: "https://www.goodreads.com/book/show/46065351-scars-left-to-heal?from_search=true&from_srp=true&qid=Fe5gOqpzwI&rank=1"),
                            Cont(image: "InsightB10", title:"The Gifts of Imperfection…", descr: "Ora più che mai, tutti abbiamo bisogno di coltivare sentimenti di autostima, accettazione e amore per noi stessi. Questo libro è una guida motivazionale sull'autostima e la crescita personale.", fonte:"Brené Brown", link: "https://www.goodreads.com/book/show/18780189-the-gifts-of-imperfection?from_search=true&from_srp=true&qid=WXeja0uwGw&rank=1")],
                        artists:[
                            Cont(image: "InsightI6", title:"\nClaudia Sahuquillo", descr: "Claudia è un'artista di Barcellona. Crede fermamente nella nudità del corpo femminile considerandolo un potente mezzo per celebrare la femminilità e rivoluzionare i preconcetti e i pregiudizi stabiliti.", fonte:"Artista", link: "https://www.instagram.com/claudiasahuquillo/?hl=it"),
                            Cont(image: "Erin_Stewart", title:"\nErin Stewart", descr: "Erin è cresciuta nei boschi della Virginia catturando lucciole. Ama usare il suo background nel giornalismo per ricercare e scrivere romanzi basati sulla vita reale. Sopravvissuta allo scompenso cardiaco e madre adottiva, crede che la vita getti colpi di scena e persone nella nostra strada per una ragione, sempre.", fonte:"Autrice", link: "https://www.instagram.com/erin_n_stewart/"),
                            Cont(image: "InsightI1", title:"\nSuzon Lagarde", descr: "Suzon è un' artista emergente con sede a Londra. Crea piccoli mondi nella pittura; osservazioni di vita che si incontrano con ricordi preziosi e presenze sognate.", fonte:"Artista", link: "https://www.instagram.com/suzonlagarde/"),
                            Cont(image: "InsightI3", title:"\nAngela Bianchi", descr: "Angela è una consulente di immagine personale, crea e personalizza in modo originale esperienze che aiutino le persone a trovare la propria indipendenza attraverso lo stile e l'accettazione del corpo.", fonte:"Consulente d’immagine", link: "https://www.instagram.com/angelabianchivirgoimage/"),
                            Cont(image: "InsightI5", title:"\nFariha Róisin", descr: "Fariha è un’ artista multidisciplinare. Lavora principalmente come scrittrice, editor, artista visiva e attrice e i suoi interessi spaziano dall'identità musulmana, alla razza, alla cultura pop e al cinema.", fonte:"Artista, scrittrice, editor", link: "https://www.instagram.com/fariha_roisin/"),
                            Cont(image: "InsightI4", title:"\nSarah Jean", descr: "Sarah è una poetessa, performer e fotografa. Il suo progetto  “(re)markable project”  è un lavoro fotografico nato con l'obiettivo di documentare storie e cicatrici in un modo straordinariamente originale.", fonte:"Poetessa, performer, fotografa", link: "https://www.instagram.com/remarkableproject/"),
                            Cont(image: "InsightI7", title:"\nSamanta Bullock", descr: "Samanta sostiene l'inclusività nel settore della moda. Ha creato la sua prima linea di abbigliamento pensata per essere indossata dalle persone in sedia a rotelle. Il tennis è la sua passione, nel 2007 ha vinto due medaglie d’argento ai Para Pan Am Games.", fonte:"Modella e atleta paralimpica", link: "https://instagram.com/samantabullock?igshid=1al7prymihtry"),
                            Cont(image: "InsightI13", title:"\nChiara De Marchi", descr: "Chiara è una fotografa professionista e amante dell'arte. Il suo progetto \"Invisible Body Disabilities\" raccoglie foto e storie di donne guerriere che, con coraggio, hanno deciso di mostrare le loro malattie invisibili attraverso l'arte della fotografia.", fonte:"Fotografa", link: "https://www.instagram.com/invisiblebodydisabilities/"),
                            Cont(image: "InsightI14", title:"\nChristina Helena", descr: "Una delle più giovani sopravvissute al tumore del pancreas con una grande cicatrice sull'addome, Christina sta ridefinendo lo stigma dietro il trauma e il dolore con un semplice motto: My Scar is Sexy®. La storia di Christina è ...", fonte:"Speaker, scrittrice, performer e coach", link: "https://www.instagram.com/iamchristinahelena/")],
                        books:[
                            Cont(image: "insightP1", title:"Sharing Your Story Frees You", descr: "Parlare della tua esperienza aiuterà te e gli altri. Rompi il silenzio: questo è il momento di trasformare la tua storia in un potente messaggio.", fonte:"Billy J. Atwell ft Eli Nash", link: "https://open.spotify.com/episode/2NhiV5ALQUnTouSjCn7dwe?si=QLESVlolQtuISOYw7AmSbA"),
                            Cont(image: "insightP2", title:"5 Ways to Feel Better About Your Body", descr: "In questo episodio avrai modo di ascoltare 5 strategie che ti aiuteranno a sviluppare un'immagine positiva del tuo corpo senza doverlo necessariamente cambiare!", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/03pJo4gG9DYVbBdyCIIk9P?si=G8oaXQkYTs-09AR_c4oGdQ"), Cont(image: "insightP3", title:"Use Your Wardrobe to Improve Your Body Image", descr: "In questo episodio, l'esperto di moda Reachel fornirà una prospettiva diversa sull'immagine del corpo e l'importanza degli abiti e dello stile per sentirsi sempre creativi e a proprio agio.", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/2tfdATr70GnF6WVUdQsuSA?si=n5A2yQD5RF-2BVI5hVP_ZQ"),
                            Cont(image: "insightP4", title:"Practice Positive Self-Talk", descr: "In questo episodio scoprirai l'importanza di sviluppare un dialogo interiore positivo. Il primo passo per sentirsi bene è parlare positivamente con se stessi, fissare obiettivi e raggiungerli!", fonte:"Stephanie Webb & Emily Fonnesbeck", link: "https://open.spotify.com/episode/3T1EDWEVQZGzPmnFhg6hm7?si=EVnXpAT3TdCxjXeLPik2WA"), Cont(image: "insightP5", title:"Don’t be responsible - Live life your way", descr: "Michelle ha subìto oltre 15 interventi chirurgici prima dei 20 anni. Oggi insegna alle persone come essere felici e a proprio agio con le proprie cicatrici.", fonte:"Kitty Waters & Michelle Elman", link: "https://open.spotify.com/episode/5aenNyzrxJSNMj82mQi33E?si=gEtT8PHzRgqtRSJY8mGSHA"),
                            Cont(image: "insightP6", title:"8 Minute Motivation: Handling Criticism", descr: "Ecco alcuni suggerimenti per smettere di preoccuparti di ciò che la gente pensa di te. Smetti di temere commenti, critiche e giudizi negativi.", fonte:"Natalia Benson", link: "https://open.spotify.com/episode/5wnfsFr2Mb8d45ebeHTt8q?si=4-_712XhTuqWllCu3Mq4Xg"), Cont(image: "insightP7", title:"Self Love Guided Meditation", descr: "In questo episodio ti dedicherai ad un tipo di meditazione guidata che ti aiuta ad amarti e ad accettarti. Ricorda sempre di ritagliare del tempo per la tua serenità.", fonte:"Melanie Lillis", link: "https://open.spotify.com/episode/1ExTSehbhCx0asZLF1g60i?si=XGb6ECfnQxecP6EMufuQ1Q"),
                            Cont(image: "insightP8", title:"From Stretch Marks To Glitter Stripes", descr: "Il messaggio di Allison Kimmey è diventato virale e la sua missione è quella di aiutare tutte le mamme ad amare di più il proprio corpo. Ascolta la sua storia e fidati dei suoi preziosi consigli!", fonte:"Sen McLellan & Allison Kimmey", link:"https://open.spotify.com/episode/2dW6CQgkCtLPbC80hgkW4u?si=g8mfJ5DJTJOfeXFHR_qsDA"), Cont(image: "insightP9", title:"10 Ways to Develop Self Confidence", descr: "Spesso ci sentiamo giudicati e influenzati negativamente dall'opinione altrui. In questo episodio Abby ti fornirà 10 metodologie per sviluppare l'autostima e la fiducia in se stessi.", fonte:"Abby Asselin", link: "https://open.spotify.com/episode/1nq5YjNDbq84KZeHu8WQwo?si=f395OhhrSp6Ixzr-Q9YOdA"),
                            Cont(image: "insightP10", title:"How To Plant The Seeds Of Confidence", descr: "Il primo passo da fare per sentirsi meglio con se stessi e acquisire autostima quindi uscire dalla propria zona di comfort! Ascolta quest' episodio e scopri come piantare i semi della fiducia.", fonte:"James Blundell", link: "https://open.spotify.com/episode/50DKtkyhsjEKE2JpJ04Wnr?si=o0b_AjWITQKQmtMupCPcJQ")/*,
                    Cont(image: "InsightI8", title:"\nMichelle Elman", descr: "Michelle is an author, life coach and speaker who has created successful campaigns. After having many surgeries herself, she felt that she should share her experiences to make people feel that they were not alone.", fonte:"", link: "https://www.instagram.com/scarrednotscared/?hl=it"),
                    Cont(image: "InsightI9", title:"\nSara Shakeelde", descr: "Sara is a young Pakistani artist. Her images, covered with a waterfall of glitter, are a tribute to the beauty that lurks in everything even in the most absurd places.", fonte:"", link: "https://www.instagram.com/glitterstretchmarks/"),
                    Cont(image: "InsightI10", title:"\nHannah Lisa Witton", descr: "Hannah is an English YouTuber, broadcaster, and author. Her message goes to all people who have a scar: ‘your body is still beautiful.Your body is still worthy of being celebrated and seen.’", fonte:"", link: "https://www.instagram.com/hannahwitton/?hl=it"),
                    Cont(image: "InsightI11", title:"\nHilde Atalanta", descr: "Hilde is an illustrator and painter, living and working in Amsterdam. She loves making portraits and enjoys working in different styles. Her work revolves around gender identity, sexuality and inclusivity.", fonte:"", link: "https://www.instagram.com/hildeatalanta/?hl=it"),
                    Cont(image: "InsightI12", title:"\nNatalia Benson", descr: "Natalia is a women’s empowerment coach living in Los Angeles. She encourages women to honor their female energy. ‘Sometimes we need each other to overcome things, it is useful to receive messages from others to see things in a new light or in a new way.’", fonte:"", link: "https://www.instagram.com/natalia_benson/?hl=it")*/]
                    )]
                    
                    static var textOnTakePicture = ["Disegna la forma ","del tuo segno indelebile, o aiutati scattando una ","foto ","in modo da ","tracciarne meglio i contorni.","Non preoccuparti",", la foto che scatterai non verrà salvata!"]
                    
                    static var ViewControllerInitialdati = [ActivityStruct(
                        attivita1:[
                            ContenutoStruct(contenuto: "Specchiarsi è uno dei regali più belli che tu possa farti. Ricorda che più usi il tuo specchio per complimentarti e supportarti, più profonda e piacevole sarà il rapporto con il tuo corpo.\nEcco tre semplici passaggi per padroneggiare la tua immagine!" , titolo: "Lo specchio è il tuo migliore alleato", righe: 13), ContenutoStruct(contenuto:"L'uso di uno specchietto portatile ti consente di avvicinarti alla parte più intima di te. Assicurati solo di essere in un posto tranquillo dove nessuno può disturbarti!" , titolo: "1. Procurati uno specchietto portatile", righe: 20), ContenutoStruct(contenuto: "Inizia a stabilire un contatto visivo con te stesso e non preoccuparti se all'inizio ti senti a disagio.", titolo: "2. Stabilisci il contatto visivo", righe: 26), ContenutoStruct(contenuto: "Ora inizia una conversazione con te stesso. È importante concedersi piccoli messaggi positivi dicendo ad alta voce tutto ciò che ti fa sentire davvero bene!\n \n", titolo: "3. Concediti messaggi positivi",righe: 33)],
                        attivita2:
                            [ContenutoStruct(contenuto: "Prendersi del tempo per scrivere un diario potrebbe aiutarti a migliorare l’immagine che hai del tuo corpo. L’ attività di scrittura è spesso utilizzata come forma di terapia per tutti coloro che hanno una scarsa autostima e vivono con disagio il rapporto con il proprio corpo.\n", titolo: "L’importanza della scrittura", righe: 12),
                            ContenutoStruct(contenuto: "Ognuno ha i suoi orari: se sei mattiniero, puoi scrivere sul tuo diario al mattino, ma se sei una persona nottambula, scegli di aggiornarlo la sera.", titolo: "1. Scegli il momento adatto a te", righe: 19),
                            ContenutoStruct(contenuto: "Ricorda che puoi cambiare te stesso ma non gli altri! Non dar retta a ciò che le persone potrebbero dire o pensare. Sii te stesso e asseconda sempre ciò che senti.", titolo: "2. Allontana la negatività", righe: 26),
                            ContenutoStruct(contenuto: "Il tuo corpo merita rispetto, attenzione e amore. Guardati allo specchio, apprezza tutte le tue imperfezioni e annotale nel tuo diario.", titolo: "3. Scrivi di te in modo positivo", righe: 33),
                            ContenutoStruct(contenuto: "Tieni traccia quotidianamente dei tuoi progressi complessivi. Un modo affidabile in cui puoi farlo è annotare il tuo stato d’animo di ogni singolo giorno.", titolo: "4. Tieni traccia del tuo stato d’animo", righe: 40),
                            ContenutoStruct(contenuto: "Probabilmente dopo un po’ di tempo la tua passione per la scrittura potrebbe svanire, ma non preoccuparti. Ricorda che: la costanza è la chiave. Un modo utile per non arrendersi è concederti una ricompensa per ogni sessione di scrittura che porti a termine.", titolo: "5. Non arrenderti mai!", righe: 47)],
                        attivita3:
                            [ContenutoStruct(contenuto: "Se non hai un buon rapporto con il tuo corpo lasciarsi ispirare da qualcuno che ha avuto un’esperienza simile alla tua potrebbe essere la spinta iniziale di cui hai bisogno per sentirti meglio con te stesso.\nUn modo semplice e divertente è quello di raccogliere citazioni o storie della tua celebrità o Influencer preferita ma anche di autori celebri o delle persone che fanno parte della tua quotidianità.\n", titolo: "Lasciarsi ispirare è importante", righe: 15),
                            ContenutoStruct(contenuto: "• Salva le tue citazioni o storie preferite per il tuo prossimo giorno di bassa autostima; \n• Scrivile su note adesive colorate;\n• Condividile con i tuoi amici;\n •Leggile ad alta voce di fronte allo specchio;\n• Mettile in pratica.", titolo: "Vediamo come lasciarsi ispirare", righe: 24)],
                        attivita4:
                            [ContenutoStruct(contenuto: "Prova a passeggiare all’aria aperta per almeno 30 minuti. Se ritieni che sia troppo faticoso non preoccuparti. Comincia con piccole passeggiate regolari di 10 minuti per almeno tre volte al giorno e poi passa gradualmente a sessioni più lunghe.Le persone che passeggiano con regolarità traggono da quest’esercizio un grande senso di benessere, si sentono più rilassate e affrontano la vita con più positività.\n\nCamminare richiede un’ attrezzatura minima e può essere fatto in qualsiasi momento della giornata … quindi niente scuse!\n", titolo: "Passeggia per il tuo benessere", righe: 22)],
                        attivita5:
                            [ContenutoStruct(contenuto:"La meditazione è il miglior metodo per conoscere te stesso a fondo, può essere usata come una tecnica di rilassamento o come strumento per la crescita della consapevolezza e della spiritualità.\nEcco alcuni piccoli consigli che ti aiuteranno lungo il percorso:", titolo: "Crea il tuo mantra", righe: 12),
                            ContenutoStruct(contenuto: "Concentrati sulla respirazione e libera la mente da pensieri inutili.", titolo: "1. Concentrati sulla respirazione", righe: 17),
                            ContenutoStruct(contenuto: "Cerca di essere consapevole della postura che adotti, focalizza l'attenzione sul corpo.", titolo: "2. Controlla la tua postura", righe: 22),
                            ContenutoStruct(contenuto: "Gli occhi non devono essere né aperti, per evitare distrazioni, né chiusi, per evitare di addormentarsi.", titolo: " 3. Socchiudi gli occhi", righe: 28),
                            ContenutoStruct(contenuto: "Per aumentare la concentrazione sul respiro puoi usare un mantra, è una frase breve facile da ripetere.", titolo: " 4. Usa un mantra", righe: 34),
                            ContenutoStruct(contenuto: "È importante dedicare abbastanza tempo a questa pratica. Sarebbe ideale fare due sessioni di meditazione, la prima al mattino e la seconda la sera. La meditazione non è una pratica occasionale, è molto importante meditare ogni giorno, anche solo per pochi minuti.", titolo: "5. Trova il tuo tempo ideale", righe: 42)],
                        attivita6:
                            [ContenutoStruct(contenuto: "\n\nL'esercizio fisico svolto regolarmente può avere un impatto positivo sulla tua vita quotidiana. Ma non preoccuparti, per ottenere i risultati che desideri non devi torturarti con esercizi troppo complessi. Puoi fare progressi rispettando i tuoi tempi e le tue condizioni.\nVediamo insieme alcuni esercizi da fare:", titolo: "Quali sono gli esercizi che influenzano il tuo umore in modo positivo?\n", righe: 14),
                            ContenutoStruct(contenuto: "Lo yoga aiuta a sviluppare una consapevolezza e una conoscenza più profonda di sé attraverso  una focalizzazione interiore e una calma profonda.", titolo: "1. Yoga", righe: 20),
                            ContenutoStruct(contenuto: "Il Pilates ti insegna a sviluppare una maggiore consapevolezza del tuo corpo, a correggere la tua postura e a migliorare la precisione dei tuoi movimenti.", titolo: "2. Pilates", righe: 27),
                            ContenutoStruct(contenuto: "Il Tai Chi è una disciplina di origini antiche, molto vicina al mondo delle arti marziali, utile per rafforzare il carattere, l'elasticità dei muscoli e il miglioramento della postura.", titolo: "3. Tai Chi", righe: 33)],
                        attivita7:
                            [ContenutoStruct(contenuto: "Ricordi quando è stata l'ultima volta che hai riso di gusto? Ridere fa bene alla salute e genera reazioni positive per il tuo corpo.\n\nE se pensi di non aver alcun motivo per ridere, inventalo, cerca qualcosa di divertente come una buona commedia o uno scherzo! Tutto il tuo corpo ti ringrazierà!\n\nQui troverai tre buone ragioni per cominciare a ridere!\n\n- Ridere migliora la produttività sul lavoro e un sorriso può creare legami nel team, ridurre il livello di stress e aiutarti a risolvere i problemi con maggiore lucidità.\n\n- Sorridere ti rende creativo, più sei rilassato, più la tua mente è incline alla creatività.\n\n- Ridere ti permette di dormire meglio, infatti concedersi una sana risata prima di dormire aumenta la produzione di melatonina nel corpo.\n\n…quindi ridi senza moderazione!", titolo: "C’è sempre un buon motivo per ridere", righe: 32)],
                        attivita8:
                            [ContenutoStruct(contenuto: "La tua mente è l'unico strumento utile ed essenziale per gestire e pianificare i pensieri, le aspirazioni e gli obiettivi. Se pianifichi i tuoi obiettivi, sarà molto più facile ottenere i risultati che desideri raggiungere.\nVediamo insieme in che modo gestire le difficoltà e organizzare i pensieri:", titolo: "Pianifica, gestisci e raggiungi!", righe: 12),
                            ContenutoStruct(contenuto: "Classifica gli obiettivi in base all'importanza che hanno per te e calcola i passi che devi compiere per raggiungerli.", titolo: "1. Fai un elenco di tutti gli obiettivi", righe: 18),
                            ContenutoStruct(contenuto: "In questo modo ridurrai lo stress e sarai più felice e soddisfatto.\nImpostando le scadenze aumenterà la tua motivazione, questo metodo ti fornirà i giusti feedback su ciò che funziona e cosa no. Regalati una ricompensa, quando raggiungi un obiettivo non dimenticare di premiarti, questo ti renderà più felice e più motivato a fare il passo successivo.", titolo: "2. Dividi gli obiettivi più grandi", righe: 28)],
                        attivita9:
                                [ContenutoStruct(contenuto: "La luce solare apporta notevoli benefici alla tua mente, migliora l’umore e riduce lo stress. I vantaggi sono molti ma qual è il miglior modo per esporsi al sole mentre si sta a casa?\n\nSe hai un balcone puoi utilizzare una comoda sedia a sdraio e cercare di trascorrere del tempo all’aperto ogni volta che ne hai la possibilità.\n\nE se invece non hai un balcone? Prova a identificare le ore del giorno in cui la luce entra direttamente dalle tua finestra. Aprila, siediti a favore della luce e sfrutta ogni momento di pausa per esporti al sole!", titolo: "Quali sono i benefici della luce solare?", righe: 23)]
                    )]
                    
                    static var textOnViewController = ["Traccia e"," riempi la forma"," del tuo segno."]
                    
                     static var textOnPrimaTutorial = ["Ciao,","Questo è Skinsugi!","Siamo felici di averti con noi.","Inserisci il tuo nome","Il mio nome è..","Prova a riflettere sulle risposte","Ci siamo quasi","Come ti fa sentire il tuo segno?\nCome pensi che gli altri lo vedano?"]
                    
                    static var textOnSecondaTutorial = ["Raccontando la storia del tuo segno indelebile puoi cambiare il modo in cui guardi il tuo corpo e quello degli altri.","si prenderà cura della tua storia","Scopri come creare il tuo Skinsugi masterpiece.","Tempo di esplorare","Attività e Insights","Qui troverai consigli interessanti e contenuti sempre nuovi!"]
                    
                    static var textOnSharePage = ["Condividere le tue emozioni con gli altri è fondamentale per la tua ","emotività ","rafforza l autostima",",allontana le insicurezze, e ti insegna che ","non sei solo",", mai.\n","\nCosa stai aspettando?\nRacconta la tua storia e condividila su ","Instagram ","con l'hashtag ","o invialo a noi\nin forma anonima puoi essere d'ispirazione anche senza mostrare il tuo nome!\n ","Scrivi la storia che si cela dietro il tuo segno indelebile…  - ","(max 1100 caratteri)","La tua storia è stata copiata correttamente"]
                    
                    static var textOnGenerateAgain = ["Il pattern nel cerchio più grande descrive ","la tua personalità ","e il colore al suo interno rappresenta ","il modo in cui vuoi apparire"," dall’esterno.\nLe due forme geometriche all’esterno raccontano"," il modo in cui vorresti essere "," e la texture al loro interno rappresenta ","la percezione che hai del tuo segno indelebile",", che è in oro ed occupa il centro dell’immagine, come ","l’arte del Kintsugi ","insegna!","Cerchio",": empatia - socialità","Zig Zag",": estro - ambizione","Triangolo",": leadership - tenacia","Rettangolo",": curiosità - caos","Quadrato", ": cautela - precisione","Il tuo Skinsugi Masterpiece è stato copiato correttamente"]
                    
                    
                    
                }

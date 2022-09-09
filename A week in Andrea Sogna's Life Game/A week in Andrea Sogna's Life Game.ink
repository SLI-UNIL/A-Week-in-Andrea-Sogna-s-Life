#theme: CLEAR
#author: Thomas Nawid Schatzmann

-> Menu

==== Menu ====

# CLEAR
<h1> A week in Andrea Sogna's life </h1>
+ [Play] -> Foreword
+ [About] -> About

==== About ====

# CLEAR
<h2> About </h2>

This game is an interactive fiction and is part of an evaluation for "2D Game Development" under the direction of Prof. Isaac Pante (University of Lausanne, Spring 2022). Its aim is to raise players' awareness of 'student precarity'. The game is based on reedings and encounters. However, it is not an exact depiction of reality. All characters and places are fictional.

+ [References and uselful links] -> References
+ [Back to menu] -> Menu


=== References ===
# CLEAR
<h2><b>References </b></h2>

\- Anne-Françoise Dequiré, « Le monde des étudiants : entre précarité et souffrance », <i>Pensées Plurielles</i>, n°14, pp. 95-10, available on <i>Cairn.info</i>.
\- Claudio Bolzman et Ibrahima Guissé, « Étudiants du "Sud" en Suisse romande : de la précarité lors des études aux risques de brain waste dans le cadre de la mobilité internationale », <i>Journal of International Mobility</i>, 2017, n°5, pp. 133-156, available on <i>Cairn.info</i>.
\- Lamiyah Bahrainwala, « Precarity, citizenship, and the 'traditional' student  », <i> Communication Education </i>, n°69, 2020, pp. 250-260, available on <i>Taylor & Francis Online</i>.

<h2><b>Useful links</b></h2>

\- Social Affairs and Student Mobility Office of the University of Lausanne : www.unil.ch/sasme/en/home/menuinst/soutien-aux-etudiantes.html
\- Syndicat SUD étudiant-e-s et précaires : www.sud-ep.ch


+ [Back to about] -> About
+ [Back to menu] -> Menu


VAR Health = 50

VAR Mood = 50
        
VAR Money = 50

VAR Studies = 50


=== Foreword ===
# CLEAR

This game is about 'student precarity' and would like to offer <b>an</b> experience of it.
You are about to live Andrea Sogna's life for a week and have a 50 CHF budget for your expenses.
Please keep in mind this is a game and is therefore not an exact depiction of reality. All characters and places are fictional.
Good luck and enjoy the game! :)

* [<h3>Start<h3>] -> Introduction

=== Introduction ===
# CLEAR

Dear new Diary,
It is with great pleasure and enthusiasm that I'm writing on your pure white sheets. You oughta know that YOU ARE THE 11th! And that, therefore, 10 siblings are eagerly waiting for you to join them in the shelves, cardboard boxes, or wherever I lovingly and cautiously thr...stored them.
Now, with no further ado, my dear but still inexperienced Diary, I'll tell you two or three basic things about myself. I'm Andrea Sogna, 22 years old, student at the University of Geneva (third and last year of BA in French & History of Art), no family, or as if: no siblings, no relatives, and terrible parents; 'Don't study arts nor philosophy, find yourself a real job!' (the kind of "real job" you find in business schools LOL), 'A child should have a mother and a father' (too bad I'm gay), 'There are too many foreigners' (said my only freshly Swiss-naturalized dad, but I guess his and theirs (my mom is no better) wonderful values are international...), etc…
See, better without family, right? Especially since I managed to leave our 35 m2-living-hell-flat and established myself in a nice student room! Or at least it's what I have to tell myself... Let's say if I lived in Hell, now I live in the antechamber of Hell, or rather in a long forgotten torture chamber, "furnished" with something that somehow looks like a bed (but definitely feels not like one), an all-purposed piece of furniture, a wardrobe made of two cardboard boxes, a sink (I'd rather die than drink the murky and muddy water that comes out of it) and a 19th century vintage gas stove. Last but not least, the sanitary facilities are common, and even though I've barely seen the other users I know they exist, since it's always dirtier before I arrive than after I leave...
ANYWAY, I'll stop for tonight! It's already late and I wake up early tomorrow, so I better go to bed quickly! Dear new Diary, I wish us a good night, and see you tomorrow!

* [<h3> October 17, Monday <h3>]
-> Monday

=== Monday ===

<h3> October 17, Monday <h3>
<h3> 2022 <h3>

Dear Diary,

As I woke up this morning, I realized it was raining hard outside.

* Still, I decided to courageously go to the University by bike, hoping the rain would stop <>

    ~ Mood -= 10
        { Mood < 0:
            -> BadMood
        }

    (I had no hope).
    I arrived completely soaked and, since I took extra care on the road because of the rain, almost late. As I entered the classroom just after the bell, I felt the judging, mildly disapproving, and maybe even pitying, gaze of the people around me. Yes I was soaked and so what? Have they never been soaked? Those who don’t know nor understand the price of the fare shouldn’t have the right to judge.
        -> MondayLunch
    
* So, I decided to use public transportation
        -> MondayMorningPT

=== MondayMorningPT ===

* and to pay the 2 CHF ticket<>

    ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }
        
    , while mumbling about the expense.
        -> MondayLunch
        
* and not to pay the 2 CHF ticket[! I’m a REBEL after all!]<>
    , relying on the fact that conductors are supposedly rare during peak hours.
    
    ~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
         - else:
            -> MondayLunch
        }

=== MondayLunch ===

The morning went on swiftly. BUT, at lunchtime, I realized I HAD FORGOTTEN to bring something to eat. So, since I had {Money} CHF left for the week, I
* resolved not to eat. <>

    ~ Mood -= 5
        { Mood < 0:
            -> BadMood
        }
    ~ Health -= 20
        { Health < 0:
            -> BadHealth
        }
        
    I'm used to it.
    
* bought something at the convenience store[ (4 CHF)]. <>

    ~ Money -= 4
        { Money < 0:
            -> NoMoney
        }

    I opted for a bread ball, a houmous and an apple. It’s a safe pick since the houmous is fairly decent, and not overly expensive.
    
* bought a tuna sandwich at the cafeteria[ (5.5 CHF)]. <>

    ~ Money -= 5.5
        { Money < 0:
            -> NoMoney
        }

    For its price, the sandwich is good (the balance between the tuna and the mayonnaise is spot on) and big enough to last until supper.
    
* went to the canteen, hoping the menu of the day would be good[ (7 CHF)]. <>

    ~ Money -= 7
        { Money < 0:
            -> NoMoney
        }

    It was some kind of fish I don’t remember with rice. The menu wasn’t bad, and it was a hot dish so I couldn’t really complain. But since I paid 7 CHF for it, I would have hoped to be a bit more satisfied.

- During the break between my two classes of the afternoon, Alex, with whom I attend the same courses and spoke two or three times, invited me to tag along with some of our classmates and go grab a drink after the end of our last class. I was REALLY thorn, since it was the first time I was invited to such event, and a good occasion to finally meet some new people. On the other end, I had almost nothing to eat at home and had to go shopping for the week. After giving it some (quick) thoughts, I finally:

* accepted the invitation. <>

    ~ Mood += 10

    I couldn’t know when such occasion would present itself again and I too had the right to have fun from time to time! Screw Austerity!
        -> MondayEvening

* declined the invitation. <>

    ~ Mood -= 10
        { Mood < 0:
            -> BadMood
        }

I told Alex I had nothing to eat at home for the upcoming days and that I had to go grocery shopping. While excusing myself, I sensed my answer sounded not very convincing and felt uneasy about it, because it was the plain and boring truth. Nonetheless, I still insisted I would have loved coming and that I hoped the next time would be very soon!...
- After the class ended, I hurried up so I could have time to go grocery shopping.  Since it is more convenient to go to the supermarket next to here, I decided to return home first.

    *{not MondayMorningPT} -> GroceryShopping
    *{MondayMorningPT}   -> MondayEveningPT
  



=== MondayEveningPT ===

<> But I had to, once again, use public transportation,

* which meant paying for the fare[ (2 CHF)].

    ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }
    -> GroceryShopping

* hoping there would be no control.

~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
         - else:
         <> And there wasn't any.
        -> GroceryShopping
        }

=== GroceryShopping ===

For the week, I bought

* a 6 pack of budget still water[ (2 CHF)],

~ Money -= 2

* a 6 pack of still water[ (4 CHF)],

~ Money -= 4
        
* a 6 pack of premium still water[ (6 CHF)],

~ Money -= 6

-

* a bottle of budget milk[ (1 CHF)],

~ Money -= 1

* a bottle of milk[ (1.5 CHF)],

~ Money -= 1.5

* a bottle of organic milk[ (2 CHF)],

~ Money -= 2

-

* 10 budget eggs[ (4 CHF)],

~ Money -= 4

* 10 eggs[ (6 CHF)],

~ Money -= 6
  
* 10 organic eggs[ (8 CHF)],

~ Money -= 8

-

* 1.5 kg of budget vegetables (mostly onions & tomatoes)[ (3.5 CHF)],

~ Money -= 3.5

* 1.5 kg of vegetables (mostly onions & tomatoes)[ (5 CHF)],

~ Money -= 5

* 1.5 kg of organic vegetables (mostly onions & tomatoes)[ (9.5 CHF)],

~ Money -= 9.5

-

* 1 kg of budget fruit (some apples & pears)[ (2 CHF)],

~ Money -= 2

* 1 kg of fruit (some apples & pears)[ (4 CHF)],

~ Money -= 4

* 1 kg of organic fruit (some apples & pears)[ (6 CHF)],

~ Money -= 6

-

* 1 kg of budget pasta[ (1.5 CHF)],

~ Money -= 1.5

* 1 kg of pasta[ (3.5 CHF)],

~ Money -= 3.5
   
* 1 kg of organic pasta[ (5 CHF)],

~ Money -= 5

-

* 1 kg of budget basmati rice[ (2.5 CHF)],

~ Money -= 2.5
 
* 1 kg of basmati rice[ (5 CHF)],

~ Money -= 5
   
* 1 kg of organic basmati rice[ (6 CHF)],

~ Money -= 6

-

* 500 g of budget lentils[ (2 CHF)],

~ Money -= 2

* 500 g of lentils[ (2.5 CHF)],

~ Money -= 2.5

* 500 g of organic lentils[ (3 CHF)],

~ Money -= 3

-

* [(no meat)]

* budget chicken wings[ (5.5 CHF)],

~ Money -= 5.5

* chicken wings[ (6.5 CHF)],

~ Money -= 6.5
       
* organic chicken wings[ (8.5 CHF)],

~ Money -= 8.5

- and, finally, to bring some sweetness into my life,

* some budget cookies[ (1.5 CHF)].

~ Money -= 1.5

* some cookies[ (2.5 CHF)].

~ Money -= 2.5
     
* some organic cookies[ (3.5 CHF)].

~ Money -= 3.5

- 
        { Money < 0:
            -> NoMoney
        }

I had trouble carrying everything at once and have {Money} CHF left for the week, but at least I’m supposed to have everything I need!

* {not Tuesday}    -> MondayNight
* {Tuesday} -> TuesdayEvening

=== MondayNight ===

Since I had a bit of time before Diary time and bedtime, I decided to

*relax and have some fun. <>

    ~ Mood += 10

    ~ Studies -= 10
        { Studies < 0:
             -> BadStudies
        }

    I had a bit of a hard time choosing what to do. And, of course, I ended up not having that much time, so I went for a compilation of animated short films and WHAT A GREAT IDEA THAT WAS! All the films were absolutely magnificent, and the one with the Reaper almost moved me to tears!
    And then here I am, writing the final lines of the day. Dear Diary, I wish us a good night, and see you tomorrow!

* study a bit. <>

    ~ Mood -= 10
        { Mood < 0:
            -> BadMood
        }

    ~ Studies += 10

    I don’t really enjoy studying when I could do something else, especially in the evening. But I also know it’s paradoxically the moment of the day where I’m the most efficient, and I’d like to stay as much as possible on schedule, so I gritted my teeth and studied.
    Anyway, here I am now, writing the final lines of the day. Dear Diary, I wish us a good night, and see you tomorrow!

-

* [<h3> October 18, Tuesday <h3>] -> Tuesday

=== MondayEvening ===

We met after our last class ended. In addition to Alex, there were Sacha, Claude, Noa (the four of them form a band (they are always together)) and two others I knew less Gab & Camille (I learned the two of them were a couple). All of them are really friendly and easy going. I had a nice time with them and, even if I’m not sure we could become great friends, I hope we could hang out together from time to time. We first went to <i>The Bar-num-b</i> where I took a pint of lager for 6 CHF <>

~ Money -= 6
    { Money < 0:
            -> NoMoney
    }

and,

* after an hour, since everyone else had ordered another drink, I took a second.

~ Mood += 5

~ Money -= 6
        { Money < 0:
            -> NoMoney
        }


* since it was already quite expensive and even though everyone else had ordered another drink, I managed to have mine last for the whole 2 hours we were in the bar.

~ Mood -= 5
        { Mood < 0:
            -> BadMood
        }

- Then Gab & Camille suggested we could go grab a kebab, so

* we went for one[ (10 CHF)]. <>

~ Mood += 10

 ~ Money -= 10
        { Money < 0:
            -> NoMoney
        }

    I hadn’t eaten a kebab for quite a while and that little thing made me very happy. Yeah what an evening!!!
    After a while, since it was already quite late, we finally decided to part. <>

* I told them (since I’ve already spent some money) I’d rather go to a convenience store but would join them after that[ (5 CHF)]. <>

 ~ Money -= 5
        { Money < 0:
            -> NoMoney
        }

    The convenience store still had some mixed salads left, so I took a caprese one and then joined the rest of the group. We spent a bit more time together. Then, after a while, since it was already quite late, we decided to part. <>

* I told them (and myself) I wasn’t hungry because of the beer, but would happily tag along with them anyway. <>
    
   ~ Health -= 20
        { Health < 0:
            -> BadHealth
        }
   
    ~ Mood -= 5
        { Mood < 0:
            -> BadMood
        }
        
    The smell of kebab was really hard to resist, but I somehow managed to. Nevertheless, I still had a good time with the group.
    After a while, since it was already quite late, we finally decided to part. <>

-  Fortunately, we ended up not too far from here, so it suited me quite well. And here I am, writing the final lines of the day. Dear Diary, I wish us a good night, and see you tomorrow!

    * [<h3> October 18, Tuesday <h3>] -> Tuesday

=== Tuesday ===

<h3> October 18, Tuesday <h3>
<h3> 2022 <h3>

Dear Diary,

Like yesterday, it rained this morning like cats and dogs. And like yesterday, I faced the GREAT DILEMMA. So I

* went by bike <>

~ Mood -= 10
        { Mood < 0:
            -> BadMood
        }

    and, without any kind of surprise, I arrived… SOAKED. But like really soaked… I was so soaked I even desperately tried to dry myself with the paper in the restroom… Anyway, apart from that, nothing special happened this morning.
        -> TuesdayLunch

* used public transportation <>
    -> TuesdayMorningPT

=== TuesdayMorningPT ===

* and paid the 2 CHF ticket.

~ Money -= 2
        { Money < 0:
            -> NoMoney
        }

    -> TuesdayLunch

* and didn’t pay the 2 CHF ticket. You know, the rebel thing…

~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
         - else:
        -> TuesdayLunch
         }

=== TuesdayLunch ===

For lunch, I ate

* {MondayEvening} nothing (since I hadn’t gone grocery shopping and had already spent too much money).

   ~ Health -= 20
        { Health < 0:
            -> BadHealth
        }
   
    ~ Mood -= 5
        { Mood < 0:
            -> BadMood
        }

* {not MondayEvening} the leftovers of yesterday evening. <>
    It’s always a safe bet.

* a salad with some falafels I bought at the convenience store[ (4 CHF)]. <>

    ~ Money -= 4
        { Money < 0:
            -> NoMoney
        }

    It wasn't bad.
    
* a veggie sandwich at the cafeteria[ (5.5 CHF)]. <>

    ~ Money -= 5.5
        { Money < 0:
            -> NoMoney
        }
        
    The tomatoes weren’t ripe, but the mix eggplants/onions saved the sandwich.

* the menu of the day of the canteen[ (7 CHF)]. <>

    ~ Money -= 7
        { Money < 0:
            -> NoMoney
        }
    
    It had a fancy name, but it was in fact a basic dish of lentils with vegetables. It was really good tho! Must be the name!...

- I had free time this afternoon, so since the weather was still poor, I decided to

* {MondayEvening} finally go grocery shopping. <>
    
    ~ Studies -= 10
        { Studies < 0:
             -> BadStudies
        }
    Since it is more convenient to go to the supermarket next to here, I decided to return home first.

    **{not TuesdayMorningPT} -> GroceryShopping
    **{TuesdayMorningPT}   -> TuesdayAfternoonPT

* {not MondayEvening} study at the library. <>

    ~ Studies += 10
    
        Since it's still early in the semester, there weren't so many people, and I could work efficiently.
* {not MondayEvening} go to the cinema and watch the Nolan’s latest movie[ (15 CHF)]. <>

    ~ Mood += 10

    ~ Studies -= 10
        { Studies < 0:
             -> BadStudies
        }
    
    ~ Money -= 15
        { Money < 0:
            -> NoMoney
        }
        
    I think I'll still need some time to figure out the movie, but it definitely was a movie made by Nolan. Some space & time shenanigans, breathtaking scenes, gorgeous VFX, Hans Zimmer's music ... Still, I felt like the movie was.. missing something?! Anyway, I had a good time, so I think it was worth it.

-

* {not TuesdayMorningPT}-> TuesdayEvening
* {TuesdayMorningPT} -> TuesdayEveningPT
  
=== TuesdayAfternoonPT ===

<> But I had to, once again, use public transportation,

* which meant paying for the fare.

    ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }
    -> GroceryShopping

* hoping there would be no control.

~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
         - else:
         <> And there wasn't any.
        -> GroceryShopping
        }

=== TuesdayEveningPT ===

To go home, I used public transportation and

* and paid my ticket[ (2 CHF)].
    
    ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }
        -> TuesdayEvening

    * and didn't pay my ticket.
        
    ~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
         - else:
        -> TuesdayEvening
         }

=== TuesdayEvening ===

After eating, I had still some time left, so I took the opportunity to

*chill a bit.

    ~ Mood += 10

    ~ Studies -= 10
        { Studies < 0:
             -> BadStudies
        }

    I chose to continue my reading of <i>Harmony</i> by Project Itoh. And Gosh I love this book; the story, the dialectic between utopia/dystopia, pain/choices/conscience, aso… SOOO COOOL!!! A SF book just the way I like them.

* study a bit.

    ~ Mood -= 10
        { Mood < 0:
            -> BadMood
        }

    ~ Studies += 10

    I wasn't especially motivated, but enough to work correctly. If I keep it like that, maybe I'll have less trouble before the exam session.

- And that brings us to the end of this quiet and uneventful day. Dear Diary, I wish us a good night, and see you tomorrow!

  * [<h3> October 19, Wednesday <h3>] -> Wednesday

=== Wednesday ===

<h3> October 19, Wednesday <h3>
<h3> 2022 <h3>

Dear Diary,

Today started with some good and bad news. On one hand, the sky cleared up and the weather was pleasant. On the other hand, THE TIRES ON MY BIKE WERE PUNCTURED!!! Well, not only mine, but on all bikes of the residence. How could anyone have such a shitty idea? And it put me into so much trouble. With the upcoming rent for my room soon to be paid, I don't have the money to repair my bike. I guess I might try to ask to be paid sooner at my part-time job, but I don't know if it's a good idea...
Anyway, I still had to go to the University, WITHOUT MY BIKE, so I ended up
    
    * walking for about 80 minutes and arriving almost an hour late...
    
    ~ Studies -= 10
        { Studies < 0:
             -> BadStudies
        }
        
        -> WednesdayLunch
        
    * using public transportation <>
        -> WednesdayMorningPT

=== WednesdayMorningPT ===

    * and paying my ticket[ (2 CHF)].
    
    ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }
        -> WednesdayLunch

    * and not paying my ticket.
        With what happened earlier, they had no right to control me, right?
    
    ~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
         - else:
         <> And it fortunately seemed to work.
        -> WednesdayLunch
         }

=== WednesdayLunch ===

During the last course of the morning, we learned that we had to buy a brand-new book (impossible to find second hand) for next week... Did I talk about luck? I guess I'll have no other choice but to ask to be paid earlier. Gosh it's starting to be stressful...

The events of the day had left me with little to no appetite.

* But I forced myself to eat my leftovers a little.
    It was the fourth time of the week I was eating rice and I'm starting to be a bit fed up.

- However, after lunch, Nikita, a childhood friend of mine I don't see very often, invited me to have a coffee in some tearoom. I hesitated a bit since we are not as friends as we used to be. But on the other hand, I needed to take my mind off things. In the end, I

* accepted the invitation.

    ~ Mood += 10
    
    ~ Studies -= 10
        { Studies < 0:
             -> BadStudies
        }

    -> WednesdayAfternoon

* declined the invitation and decided I'd go running instead to clear up my mind. <>

    ~ Health += 10
    
    ~ Mood += 10

    ~ Studies -= 10
        { Studies < 0:
             -> BadStudies
        }
        
    But I had to go home first. So I
    
    ** warmed up with a short 80 minutes walk! <>
      Since the weather was perfect, it wasn't a problem at all and, when I arrived home, I was still motivated to go running. I went in a forest not far from my neighbourhood and had a really great time!
            -> WednesdayEvening
            
    ** used public transportation and paid my ticket[ (2 CHF)].
    
    ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }
        
        I went running in a forest not far from my neighbourhood and had a really great time!
        -> WednesdayEvening
        
    ** used public transportation and didn't pay my ticket.
        
    ~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
         - else:
         I went running in a forest not far from my neighbourhood and had a really great time!
        -> WednesdayEvening
        }

* declined the invitation and went studying to the library{not WednesdayMorningPT:  since I had to catch up on what I had missed this morning}. <>

    ~ Mood -= 5
        { Mood < 0:
            -> BadMood
        }
    
    ~ Studies += 10

   It was almost empty (surely because the weather was finally good),{not WednesdayMorningPT: and I managed to catch up on everything I had missed!!}{WednesdayMorningPT: and I managed to work quite well !!} 
    After that, I went home
    
    ** on foot.
        It's good for my health, right?
        -> WednesdayEvening
    
    ** using public transportation and paying my ticket[ (2 CHF)].
    
     ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }
        
       -> WednesdayEvening
       
     ** using public transportation and not paying my ticket.
     
    ~ temp NoTicket2 = RANDOM(0,7)
        {  NoTicket2 == 0:
            -> NoLuck
         - else:
        -> WednesdayEvening
         }

=== WednesdayEvening ===

After eating, I spent the rest of my evening

* playing some video games. <>
    I was totally in the mood to play to <i>Danganronpa v3: Killing Harmony</i> once again. The game (as is the franchise) is absolutely nuts. I don't get tired of it.

* studying a bit.

- Then, I spent the remaining time writing those lines. Dear Diary, it's been a long day so I wish us a good night, and see you tomorrow!

* [<h3> October 20, Thursday <h3>] -> Thursday


=== WednesdayAfternoon ===

We met at the <i>2.40</i>. I opted for

* a cappuccino[ (4 CHF)], <>

    ~ Money -= 4
        { Money < 0:
            -> NoMoney
        }

* a slice of apricot pie[ (4 CHF)], <>

    ~ Money -= 4
        { Money < 0:
            -> NoMoney
        }

* a cappuccino and a slice of apricot pie[ (8 CHF)], <>

    ~ Money -= 8
        { Money < 0:
            -> NoMoney
        }

- while Nikita went for some tea and a cheesecake. We had a good time, but I felt something was... off? I can't say precisely what, but I guess it had to do with the fact that we have completely different lives: Niky's studying law and has never lacked money. Still, I enjoyed catching up.
    After a while, Nik suggested we could go eat and drink something.
    
    * I politely declined. <>
        Since I am on a budget, I thought I'd rather eat something at home. And, because I felt Niki wouldn't necessarily understand, I pretended I was starting to have a headache. Nik didn't insist and I went home. Still, to be more convincing and not to worry Niki, I decided to use public transportation
        ** and to pay the ticket[ (2 CHF)].

        ~ Money -= 2
            { Money < 0:
                -> NoMoney
             }
            -> WednesdayEvening
        
        ** and not to pay the ticket.
        
        ~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
         - else:
        -> WednesdayEvening
         }
         
    * We decided to buy something at a convenience store and then to enjoy the good weather by the lake[ (7 CHF)]. <>

        ~ Money -= 7
            { Money < 0:
                -> NoMoney
             }
        I bought a salad with crispy tofu and a beer, Nik a Caesar salad and a beer as well. We enjoyed our time by the lake until the last ray of sunshine. Then, since we were starting to get cold, we finally said goodbye and parted. <>
                -> WednesdayEveningPT
                
    * We decided to go eat a pizza[ (14 CHF)]. <>

        ~ Mood += 10
        
        ~ Money -= 14
            { Money < 0:
                -> NoMoney
             }
        
        We went to <i>The Pizzalia</i>. It wasn't too far from us and the pizzas are really good. I obviously opted for the only true pizza (THE Margherita), while Niki heretically went for a monstrosity, namely the four cheese pizza. As for the drinks,
        
        ** I only drank tap water <>
            and Nik ordered a beer.
        
        ** We each ordered a small beer [ (5 CHF)]. <>
        
            ~ Money -= 5
                { Money < 0:
                    -> NoMoney
                }
        
        -- We both really enjoyed our meal (I certainly did more than Nikita tho). Then, after a while, we finally said goodbye and parted. <>
                -> WednesdayEveningPT

=== WednesdayEveningPT ===

Since I was cold and it was already late, I decided to use public transportation to go home

    * and paid my ticket[ (2 CHF)].
    
    ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }

    * and didn't pay my ticket.
        
    ~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
        }

    - I arrived home late and was pretty tired, but, since we're visiting the <i>Museum of Imaginery Arts</i> tomorrow, I still took time to cook me a pasta salad for lunch. And I also took extra time to write all of that, am I not the best Diary owner?! Anyway, I'm exhausted and it's way too late so, Dear Diary, I wish us a good night, and see you tomorrow!

* [<h3> October 20, Thursday <h3>] -> Thursday

=== Thursday ===

<h3> October 20, Thursday <h3>
<h3> 2022 <h3>

Dear Diary,

Today we visited the <i>Museum of Imaginery Arts</i>, so, since the museum is oustide Geneva, I had to use public transportation, which meant

    * I had to take a 3 CHF ticket.
        
    ~ Money -= 3
        { Money < 0:
            -> NoMoney
        }

    * I should have taken a ticket.
    
    ~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
        }
    
    - We spent a lot of time in the museum, which is incredible btw. I especially took my time in the temporary exhibition on 'Literature and Dreams', where I discovered many books I didn't know and was then dying to read.
    We were free to go after the morning, but since I was there I decided to explore the museum from top to bottom after eating. And Gosh I didn't regret it. The museum is huge and covers all the arts. When I couldn't stand up anymore, I finally accepted it was time to go home
    
    * and to pay the 3 CHF for the fare...
        
         ~ Money -= 3
        { Money < 0:
            -> NoMoney
        }
    
    * and to elegantly ignore the fare price.
    
    ~ temp NoTicket1 = RANDOM(0,7)
        {  NoTicket1 == 0:
            -> NoLuck
        }
    
    - I arrived home at the end of the afternoon, so I still had some time left to do something before eating and decided to
    
    * go running?! I felt it would be good for my rusty body?! <>
    
        ~ Health += 10
    
        ~ Mood += 10

        ~ Studies -= 5
            { Studies < 0:
                 -> BadStudies
            }
    
        And it looked like I was right?! I can't really explain why, but I felt good after running. I didn't run for long (I just ran in and around the neighbourhood for like 30 minutes) but it seems it was exactly what I was needing.
    
    * study, since I didn't go to the University today. <>
    
        ~ Mood -= 5
            { Mood < 0:
                -> BadMood
            }
    
        ~ Studies += 5
        
        I didn't work very well. I couldn't really concentrate, and the sitting position was slightly uncomfortable for my rusty muscles. Anyway, I still managed to study a bit, so it was better than nothing.
        
    * rest my poor old and tired body, and surf the Internet for a while. <>
    
        ~ Mood += 10

        ~ Studies -= 5
            { Studies < 0:
                 -> BadStudies
            }
    
        It was fun and I definitely rested a bit, but I can't really remember what I've done or seen, apart, of course, some cat videos...
        
    
    - After eating,
    
    * my visit of the museum made me want [to read.] <>
        to continue my reading of <i>Harmony</i> by Project Itoh. It's always a pleasure to dive into. I even felt that today's visit had given me new ways to read the book!! I was over the moon!
        
        ~ Mood += 10

        ~ Studies -= 10
            { Studies < 0:
                 -> BadStudies
            }
    
    * I felt like I needed to study. <>
        I wasn't particularly motivated, but I somehow still managed to study well, so I guess it was worth not doing something funnier.
        
        ~ Mood -= 5
            { Mood < 0:
                -> BadMood
            }
    
        ~ Studies += 10
    
    - Then, just a moment ago, since I had no bike for tomorrow, I took the decision to
    
    * wake up earlier, so I wouldn't arrive late by foot.
    
        ~ Health -= 10
            { Health < 0:
                -> BadHealth
            }
        
        ~ Mood -= 5
            { Mood < 0:
                -> BadMood
            }
    
        And voila! Since I won't sleep as much tonight, I have to go to bed.. Dear Diary, I wish us a good night, and see you tomorrow!
        
        ** [<h3> October 21, Friday <h3>] -> Friday
    
    * use public transportation, so I could sleep enough.
        And voila! I am now writing those final words before going to bed. Dear Diary, I wish us a good night, and see you tomorrow!
        ** [<h3> October 21, Friday <h3>] -> FridayMorningPT

=== Friday ===

<h3> October 21, Friday <h3>
<h3> 2022 <h3>

Dear Diary,

Waking up early is absolutely not for me. I felt sooo tiiired all day long... Anyway, nothing special happened this morning. And for lunch, I

* simply ate my leftovers.

- After my afternoon class (I only have one on Friday afternoon), I had still some time left before my part-time job (which is about halfway between the University and my home), so I decided to

* celebrate the end of the week by enjoying this beautiful autumn's day we had. <>

    ~ Mood += 10

        ~ Studies -= 10
            { Studies < 0:
                 -> BadStudies
            }

    I first had a stroll in the park near the University, then I sat on a bench by the pond and read a bit. Then, when it was, unfortunately, time, I went to work.
        -> FridayJob

* study at the library. <>

    ~ Mood -= 5
            { Mood < 0:
                -> BadMood
            }
    
        ~ Studies += 10

    As it was the end of the week, the library was, like the last few days, almost empty, so I could work quietly and quite efficiently. Then, when it was time, I went to work.
        -> FridayJob

-> END


=== FridayMorningPT ===

<h3> October 21, Friday <h3>
<h3> 2022 <h3>

Dear Diary,

When I woke up this morning, I was really happy to have decided not to wake up earlier. I had the feeling I would have been tired all day. But, consequently, I had to use public transportation, which meant

    * having to pay for the fare[ (2 CHF)].
    
    ~ Money -= 2
        { Money < 0:
            -> NoMoney
        }
    
    * hoping nobody would control me.
    
    ~ temp NoTicket = RANDOM(0,7)
        {  NoTicket == 0:
            -> NoLuck
        }

    - Anyway, nothing really happened this morning and for lunch incident I

* simply ate my leftovers.

- After my afternoon class (I only have one on Friday afternoon), I still had some time left before my part-time job (which is about halfway between the University and my home), so I decided to

* celebrate the end of the week by enjoying this beautiful autumn's day we had. <>

    ~ Mood += 10

        ~ Studies -= 10
            { Studies < 0:
                 -> BadStudies
            }

    I first had a stroll in the park near the University, then I sat on a bench by the pond and read a bit. Then, when it was, unfortunately, time, I went to work.
        -> FridayJob

* study at the library. <>

    ~ Mood -= 5
            { Mood < 0:
                -> BadMood
            }
    
        ~ Studies += 10

    As it was the end of the week, the library was, like the last fews days, almost empty, so I could work quietly and quite efficiently. Then, when it was time, I went to work.
        -> FridayJob

=== FridayJob ===

I may not have told you yet, but I work two times a week (on Friday & Saturday evenings) in an Italian restaurant (thanks to the fact I speak fluent Italian) called <i>Piccola Italia</i>.The staff and managers aren't particularly friendly, but they hired me and pay me the statutory 23 CHF per hour, so I guess I can't really complain. BUT today I HAD TO ASK TO BE PAID SOONER!! So I could pay for my bike, the book, and my rent... It was so stressful, I couldn't completely focus on working and made some small mistakes, which of course made things worse.

    ~ Mood -= 5
            { Mood > 39:
                -> HappyManager
            }
            { Mood > 16:
                -> OkManager
            }
            { Mood > -1:
                -> UnhappyManager
            }
            { Mood < 0:
                -> BadJobMood
            }

=== HappyManager ===

Shortly before the end of my service, I finally had the courage and the opportunity to talk to my managers. I explained my situation, and to my surprise they gladly accepted!! They even added they were very satisfied with my works and that I shouldn't hesitate to come to them if I never need help. I WAS SO RELIEVED AND HAPPY I almost shed tears of joy. It looks I was too harsh on them. Dear Managers, I beg your forgiveness.

     ~ Mood += 10

    -> FridayAfterJob

=== OkManager ===

Shortly before the end of my service, I finally had the courage and the opportunity to talk to my managers. I explained my situation, and, after a way too long silence, they finally agreed. I felt they weren't especially happy and they made me understand it would be the last time. But I couldn't care less!! I was off the hook!!!

     ~ Mood += 5

    -> FridayAfterJob


=== UnhappyManager ===

Shortly before the end of my service, I finally had the courage and the opportunity to talk to my managers. I explained my situation and, after a way too long silence, they simultanately agreed and FIRED ME!! (Or something like that, it was more like they wouldn't give me anymore hours... but it doesn't). They told me I had constantly been in a bad mood lately and that I had been doing way too many mistakes, that I should consider myself lucky I hadn't been sacked earlier, and that I had forgotten how lucky I was to have had this job, aso aso aso.
I was totally shocked, almost paralyzed in front of them. I begged for forgiveness, I excused myself, and begged for forgiveness and excused myself and begged for forgiveness... In the end, I thanked them and I left. I was absolutely devastated and to top it off, I still had to come tomorrow, since it was easier for them...

    ~ Mood -= 5
            { Mood < 0:
                -> BadJobMood
            - else:
            <> SO BE IT. I'LL COME TOMORROW AND WILL SHOW THEM WHAT THEY WILL MISS!!
                    -> FridayAfterJob
            }

=== BadJobMood ===

    -> BadMood
    
=== FridayAfterJob ===

I arrived home at around 2 AM. I was completely drained

* but still took the time to cook something. <>

* and chose to go to bed without eating. <>

    ~ Health -= 20
            { Health < 0:
                -> BadHealth
            }
        
        ~ Mood -= 5
            { Mood < 0:
                -> BadMood
            }
            
- And, as you can see, even if I'm more zombie than human, I took the time to write those few lines. Yeah yeah no need to thank me, my pleasure. But even zombies have to rest so, Dear Diary, I wish us a good night, and see you tomorrow!

* [<h3> October 22, Saturday <h3>] -> Saturday

=== Saturday ===

<h3> October 22, Saturday <h3>
<h3> 2022 <h3>

Dear Diary,

I woke up early this morning. But I felt pretty tired and hesitated to get up. In the end, I decided

* to get up to study. <>

        ~ Health -= 10
            { Health < 0:
                -> BadHealth
            }
        
        ~ Mood -= 5
            { Mood < 0:
                -> BadMood
            }
        
        ~ Studies += 10
    
    I wasn't very efficient, but I worked all morning, so I guess it was ok.    

* I decided I had the right to have the morning off. <>

        ~ Health += 10
        
        ~ Mood += 10
        
        ~ Studies -= 10
            { Studies < 0:
                 -> BadStudies
            }
    
    And Gosh what a pleasure that was. I felt rejuvenated.
    
- After eating something at noon, I went downtown to get my bike fixed and to buy the book. At the bike store, I insisted so much they finally agreed to get my bike fixed within two hours! And at a decent price! I thanked them so much I think I made the situation a little awkward... But it doesn't really matter, right? (I feel completely embarrassed now.) Anyway, I then went to buy the book, came back to get my bike, warmly thanked them again (no comment...), and finally went home.
At home, I just had time (God bless bikes and bike stores!) to cook something to eat. Then I went to work.
I {UnhappyManager: obviously }had a hard time at the restaurant. {UnhappyManager: In addition, } I felt the customers were more hostile than usual, and that some of them barely considered me as a human being. It felt like everything was due to them simply because they were customers. <>

~ Mood -= 10
            { Mood < 0:
                -> BadJobMood
            }

Yeah it definitely was horrible. But I {UnhappyManager: somehow managed to survive. I guess I could find a job that would suit me better.| survived.}
Like yesterday, I came home late. I then ate a bit and quickly wrote these lines. Dear Diary, I wish us a good night, and see you tomorrow!

* [<h3> October 23, Sunday <h3>] -> Sunday

=== Sunday ===

<h3> October 23, Sunday <h3>
<h3> 2022 <h3>

Dear Diary,

When I woke up this morning I saw it was raining heavily again, and it depressed made a bit.

* Still, I managed to get up to study. <>

        ~ Mood -= 5
            { Mood < 0:
                -> BadMood
            }
        
        ~ Studies += 10
        
        ** I also spent the afternoon studying.
        
            ~ Mood -= 5
                { Mood < 0:
                    -> BadMood
                }
        
        ~ Studies += 10

        ** After eating something, I was in the mood to read. <>
        
            ~ Mood += 10
        
            ~ Studies -= 5
                { Studies < 0:
                    -> BadStudies
                }
        
        So I continued my enjoyable reading of Project Itoh's <i>Harmony</i>.
        
* So I decided to go back to sleep. <>

        ~ Mood += 5
        
        ~ Studies -= 10
            { Studies < 0:
                 -> BadStudies
            }
        
        ** Then, after eating something, I spent the afternoon studying.
        
            ~ Mood -= 5
                { Mood < 0:
                    -> BadMood
                }
        
            ~ Studies += 10

        ** Then, after eating something, I was in the mood to read. <>
        
            ~ Mood += 10
        
            ~ Studies -= 5
                { Studies < 0:
                    -> BadStudies
                }
            So I continued my enjoyable reading of Project Itoh's <i>Harmony</i>.
            
 - Then this evening, for a change, 
 
 * I studied.
 
        ~ Mood -= 5
                { Mood < 0:
                    -> BadMood
                }
        
        ~ Studies += 5
 
 * I surfed the Internet for a while.
 
        ~ Mood += 5
        
        ~ Studies -= 5
                { Studies < 0:
                    -> BadStudies
                }
 
 - And finally, after supper,
 
 * I studied!
 
         ~ Mood -= 5
                { Mood < 0:
                    -> BadMood
                }
        
        ~ Studies += 5
 
 * I wanted to play a video game. <>
 
        ~ Mood += 5
        
        ~ Studies -= 5
                { Studies < 0:
                    -> BadStudies
                }
    So I continued my game of <i>Danganronpa v3: Killing Harmony</i>, absolutely insane! 
    
 - Then I took the time to think about my week. And here I am, writing the final lines of the week. Those last five weeks were almost identical. The only differences were the problems I had had to face. And even these, now that I think about it, weren't that different. They all had something to do with Money, Health, Studies and/or, of course, my Mood. Monotony is hard to experience, especially since Temptation is constantly around and hard to resist. I just hope that, one day, everything will be easier, and that all of these difficulties won't have been in vain.
 Anyway. Tomorrow  a new week starts and it's already late, so I'd better go to sleep. Dear Diary, I wish us a good night, and see you tomorrow!
 
 * [<h3><b>Go to Afterword</b><h3>] -> Afterword
 
=== Afterword ===
# CLEAR

 Congratulations on finishing the game, I hope you liked it. As mentioned in the <b>forword</b>, the aim of the game is to offer <b>a</b> taste of 'student precarity', its difficulties and its consequences.
 If the subject interests you or concerns you, please feel free to have a look to the 'references and useful links' or to get yourself informed.
 You may also play the game once again and try different choices!
 In any case, thank you for playing <i>A Week in Andrea Sogna's Life</i> and see you around! :D
 
 
 * [<h3>References and useful links<h3>] -> EndGameReferences
 

-> END

=== EndGameReferences ===
# CLEAR

<h2><b>References </b></h2>

\- Anne-Françoise Dequiré, « Le monde des étudiants : entre précarité et souffrance », <i>Pensées Plurielles</i>, n°14, pp. 95-10, available on <i>Cairn.info</i>.
\- Claudio Bolzman et Ibrahima Guissé, « Étudiants du "Sud" en Suisse romande : de la précarité lors des études aux risques de brain waste dans le cadre de la mobilité internationale », <i>Journal of International Mobility</i>, 2017, n°5, pp. 133-156, available on <i>Cairn.info</i>.
\- Lamiyah Bahrainwala, « Precarity, citizenship, and the 'traditional' student  », <i> Communication Education </i>, n°69, 2020, pp. 250-260, available on <i>Taylor & Francis Online</i>.

<h2><b>Useful links</b></h2>

\- Social Affairs and Student Mobility Office of the University of Lausanne : www.unil.ch/sasme/en/home/menuinst/soutien-aux-etudiantes.html
\- Syndicat SUD étudiant-e-s et précaires : www.sud-ep.ch

-> END

=== BadHealth ===

But since then I started to feel worsend worse T's like I have no strengh, no energ lef And my head s aching, the pan s unbaeralbe an Im losin mysihgt Ifel lke i

<h3><b>Bad Ending<h3>


* <h3>Tips</b><h3> -> BadHealthTips

=== BadHealthTips ===
# CLEAR

Unfortunately, you lost because you were not careful enough with your health. There are hidden variables that influence the outcomes of the game. Next time, try to think more about your health, but do not neglect other possible variables : balance is key. Good luck ! :)

-> END

=== BadMood ===

{BadJobMood: It | But it }was too much. I was feeling so bad. I couldn't deal with it anymore. I can't deal with it anymore. I can't deal with anything anymore. I need to escape. I need


<h3><b>Bad Ending<h3>


* <h3>Tips</b><h3> -> BadMoodTips

=== BadMoodTips ===
# CLEAR

Unfortunately, you lost because you were not careful enough as regards your mood. They are hidden variables that influence the outcomes of the game. Next time, try to think more about your mood, but do not neglect other possible variables : balance is key. Good luck ! :)

-> END


=== NoMoney ===

But I didn't have enough money left. I started panicking and crying: how would I do? What had I done? I felt completely helpless. What could I do?! I was doomed. But was it worth doing something? Why keep fighting? I don't know. I don't know anymore.

<h3><b>Bad Ending<h3>


* <h3>Tips</b><h3> -> NoMoneyTips

=== NoMoneyTips ===
# CLEAR

Unfortunately, you lost because you have no more money. Next time, try to pay more attention to your budget. But be careful, since there are hidden variables that influence the outcomes of the game: balance is key. Good luck ! :)

-> END

=== BadStudies ===

At this stage, I decided to stop worrying about my studies. Why bother? I wasn't that interested anyway. And if needed, I could start again later. Yeah now is the time for something else. I don't know what yet, but I'll eventually know. Nothing could go wrong, right?

<h3><b>Bad Ending<h3>


* <h3>Tips</b><h3> -> BadStudiesTips

=== BadStudiesTips ===
# CLEAR

Unfortunately, you lost because you did not take enough care of your studies. They are hidden variables that influence the outcomes of the game. Next time, try to think more about your studies, but do not neglect other possible variables : balance is key. Good luck ! :)


-> END

=== NoLuck ===

BUT OF COURSE I HAD TO BE CONTROLED! I tried to speak to the conductors but they didn't care. I told them I couldn't pay, that It was a single occasion, but they replied that if I couldn't pay for the fare, I shouldn't use public transportation. They then asked if I would pay on the spot or later, the latter being about 25% more expensive. I yelled at them that IF I COULDN'T PAY FOR MY TICKET I COULDN'T PAY THE FINE EITHER. And what about these 25%, what the hell were they? A poor people's tax? Were they kidding?
I started panicking and crying: how would I do? What had I done? I felt completely helpless. What could I do?! I was doomed. But was it worth doing something? Why keep fighting? I don't know. I don't know anymore.

<h3><b>Bad Ending<h3>


* <h3>Tips</b><h3> -> NoluckTips

=== NoluckTips ===
# CLEAR

Unfortunately, you lost because of bad luck. Controls happen in game and in life. Next time you might consider paying for the fare? Or you might just be luckier, who knows?! Anyway, I wish you all the best! :)

-> END
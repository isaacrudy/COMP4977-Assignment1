//
//  Zodiac.swift
//  Assignment1
//
//  Created by Isaac Rudy on 2023-09-29.
//

import UIKit

struct Zodiac: Hashable {
    var name: String
    var modulus: Int
    var description: String
    var image: String
}

class ZodiacData: NSObject {
    static let descriptions: [String] = [
        "Sign of the inventor, improviser and motivator, a charlatan capable of drawing everyone to him with guile and charm\nQuick-witted genius, clever, flexible and innovative\nCan solve intricate problems with ease and is a fast learner, no challenge is too great\nMay have an inborn superiority complex, with a low level of respect for others, or rather, a too-high level of respect for himself\nVery sociable with the ability to get you on his side\nNever lacking confidence, not matter how docile they appear\nNot completely selfish though, more like a child with a delightful preoccupation in himself\nWhen talking to a Monkey, be factual",
        "The dauntless hero who must look to the earth to survive, he is the most misunderstood and eccentric of all the signs\nThe epitome of self-assurance and aggression, but at heart can be conservative and old-fashioned\nTypically two rooster types, the rapid-firing, extremely talkative type, and the deadly somber observers- both equally hard to deal with\nAcute, neat, meticulous, organized, decisive, upright, direct and alert\nOutstanding performer that shines when they are the center of attention, could well pursue any career putting them in the public eye",
        "Very likeable, honest, intelligent and straightforward\nDeep sense of loyalty and passion for justice and fair play\nAnimated and attractive, amiable and unpretentious, can get along with others and is not too demanding\nAt times will protect the interests of others more than himself\nAnger can come in bight flashes, but will die quickly too, it will always be justifiable though\nThe Dog was born with his defenses up, you will have to gain their confidence slowly\nWill work hard when he wants to, otherwise has a certain “lie by the fire” laziness\nCan be practical, fearless and the owner of a sharp tongue, unrealistic and outspoken",
        "The sign of honesty, simplicity and great fortitude\nGallant, sturdy and courageous, will apply themselves to tasks with all their strength\nMay appear rough on the outside, but beyond the surface is different\nA natural person, the original nice guy, popular and sought after\nSeeks universal harmony, will have fights but will not hold grudges\nEqually known for his wantan pursuit of pleasure- sometimes the saint and sinner can be intertwined\nLoyal and thoughtful, will make lasting and beneficial relationships\nThe boar will grow on you-you cannot do without him!\nWill welcome a friend and their troubles with open arms",
        "Charming, innovative and intelligent\nForthright, inquisitive and intrusive but always in a disarmingly honest way\nExcels in business, alert to opportunities\nEasy to get along with, hardworking and thrifty\nGenerous to those you are fond of\nCan be easily agitated but maintains self control, gaining many friends\nBright, fun-loving, social, occasionally critical or grouchy\nFemale rats may be especially frugal, but usually not with their own children\nOverambitious at times",
        "Symbolizes the attainment of prosperity through fortitude and hard work\nDependable, calm, methodical\nPatient and tireless worker, sticks to routines and conventions\nGenerally fair-minded and a good listener but difficult to change his mind\nWith affairs of the heart, the Ox can be naïve, not fully comprehending the entrapments of love. Don’t expect poetry and romanticism. They will be inclined to long courtships.\nCharitable by nature, backbone of society\nMay hold grudges for long periods of time\nKnows how to give orders as well as taking them",
        "Symbolizes power, passion and daring\nA rebellious, colorful and unpredictable character, commanding awe and respect from all quarters\nImpulsive and vivacious, restless and reckless. Loves being the center of attention.\nHas humanitarian instincts, loves babies, endangered species\nWhatever the current object of adulation is, everything else will take second place\nThe tiger can be aspiring and adventurous, trusting their own luck and charisma to see them through tough times and eventually bring successes\nFemale tigers are fashion conscious, articulate and liberated\nMay have large ego, but romantic at heart",
        "Considered very fortunate\nServes as a symbol of longevity, said to derive it’s essence from the moon\nSoul of graciousness, good manners, sound counsel, kindness and sensitivity to beauty\nSoft-spoken, graceful and elegant\nNaturally reserved, artistic and likely to possess good judgment\nLucky in business, thorough and will shine in fields of law, government and research\nCan be cunning, and even ruthless, suave and self-indulgent\nStrong-willed and self-assure, pursuing objectives with methodical precision\nMs. Rabbit is delightful and her company is highly sought after, but when she feels she’s had enough will drop whatever she is doing to rest",
        "Magnanimous and full of vitality and strength\nConstantly on the go, egoistical and eccentric, dogmatic, whimsical and demanding, but never without and band of admirers\nDragon children tend to assume the burdens and responsibilities of a family\nEnergetic and eager with the potential to accomplish great things. But, if not careful to contain enthusiasm, can burn up in smoke.\nPowerful and difficult to oppose, prosperous, but prone to megalomania and intimidation\nDespite his ways is loyal to friends and family\nDon’t expect a Dragon to be overly sentimental or romantic\nA super positive person\nIt is said that Dragons born during a storm will lead a tempestuous and hazardous life, while those born during calm seas and heavens will live a more protected and amiable life",
        "Philosopher, theologian, political wizard, wily fancier- the Snake is the deepest thinker and the enigma\nEndowed with a personal wisdom\nGraceful and soft-spoken, will gravitate naturally towards the finer things in life\nVery beautiful\nGenerally relies on their own judgment, not working well with others, trusting their own instincts rather than outside advice\nBy nature is skeptical, but will keep his suspicions to himself\nOne of the most tenacious signs, never stops plotting and can be viciously unrelenting. Can be possessive and demanding in relationships.\nSnake women are the original femme fatale, if she doesn’t have money and power she will marry into it, and won’t agonize over women’s rights. She will be her husbands’ best asset.",
        "Cheerful, popular and quick-witted, although can be hot-tempered and headstrong at times\nThe unpredictable horse can fall in and out of love easily\nWarmly appealing, has a love of sports, outdoor activities and animals\nNatives of this sign are often called playboys or playgirls, but is just as skillful in business as in love\nCan be impulsive and stubborn. known for an explosive nature\nThe intelligent horse is performance and success oriented\nQuick to build up speed and quick o lose interest\nThe lady horse is full of spunk",
        "The Samaritan, righteous, sincere and easily taken by sob stories\nWell mannered, even shy. Gentle and compassionate.\nAt his best, is artistic, fashionable and creative, worst, is easily overcome by emotions, depressed and withdrawn\nDislikes strict schedules and too much discipline and criticism.\nApt to mother and/or smother its object of affection\nGenerous and containing fantastic luck and fortune\nThe Goat is a worrier and tends to be a pessimist and expects others to cheer him up\nKnack for turning weakness into strength\nWould rather follow others than make decisions, may be criticized for not taking a firm stand when trying to avoid conflicts",
    ]
    
    static let data: [Zodiac] = [
        Zodiac(name: "Monkey", modulus: 0, description: ZodiacData.descriptions[0], image: "Monkey"),
        Zodiac(name: "Rooster", modulus: 1, description: ZodiacData.descriptions[1], image: "Rooster"),
        Zodiac(name: "Dog", modulus: 2, description: ZodiacData.descriptions[2], image: "Dog"),
        Zodiac(name: "Pig", modulus: 3, description: ZodiacData.descriptions[3], image: "Pig"),
        Zodiac(name: "Rat", modulus: 4, description: ZodiacData.descriptions[4], image: "Rat"),
        Zodiac(name: "Ox", modulus: 5, description: ZodiacData.descriptions[5], image: "Ox"),
        Zodiac(name: "Tiger", modulus: 6, description: ZodiacData.descriptions[6], image: "Tiger"),
        Zodiac(name: "Rabbit", modulus: 7, description: ZodiacData.descriptions[7], image: "Rabbit"),
        Zodiac(name: "Dragon", modulus: 8, description: ZodiacData.descriptions[8], image: "Dragon"),
        Zodiac(name: "Snake", modulus: 9, description: ZodiacData.descriptions[9], image: "Snake"),
        Zodiac(name: "Horse", modulus: 10, description: ZodiacData.descriptions[10], image: "Horse"),
        Zodiac(name: "Goat", modulus: 11, description: ZodiacData.descriptions[11], image: "Goat")
    ]
}

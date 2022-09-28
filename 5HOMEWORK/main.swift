import Foundation
////
////  main.swift
////  5HOMEWORK
////
////  Created by Байгелди Акылбек уулу on 25/9/22.
////
//
//import Foundation
//


//func getNumb(string:String){
//    var currentNumb = ""
//    var num = 0
//    var max = 0
//
//    for x  in string{
//        if x == " " || x == ","{
//            num = currentNumb.count
//            if num > max {
//                max = num
//                num = 0
//
//            }
//            currentNumb = ""
//        }else{
//            currentNumb += String(x)
//        }
//    }
//    if currentNumb.count > max {
//        max = currentNumb.count
//    }
//    print("\(string) - \(currentNumb) - \(max)")
//}
//print("print Numbers:")
//
//let readline = readLine()!
//
//getNumb(string: readline)




//1 задание
//Саммое длинное и самое короткое слово
var maxWord = ""
var minWord = ""



var numLetters = 0


var printedWord = ""

var maxLetters = 0
var minLetters = 0


func getLetters(stroka:String){


    for x  in stroka{
        if x == " " || x == ","{

           numLetters = (printedWord.count)



                  if numLetters > maxLetters {
                maxLetters = numLetters
                numLetters = 0
                maxWord += printedWord

            }
            printedWord = ""



            if numLetters < maxLetters {
                minLetters = numLetters
                numLetters = 0
               minWord += printedWord
            }

            printedWord = ""
            minWord = ""



        }else{

            maxWord += String(x)

            minWord += String(x)

        }
    }
    if printedWord.count  > minLetters{
        maxLetters = printedWord.count
        maxWord = printedWord
        printedWord = ""
    }
    if printedWord.count  < maxLetters {
        minLetters = printedWord.count
        minWord = printedWord
        printedWord = ""
    }

    print("""
из списка слов: '\(stroka)'

самое длинное "\(maxWord)" (\(maxWord.count)) букв
самое короткое "\(minWord)" (\(minWord.count)) букв
""")

}
print("НАПИШТЕ СЛОВА:")

var stroka:String = readLine()!

getLetters(stroka: stroka)




//Телефонная книга
var names = ["Nurik", "Mom", "Dad", "Magda", "Nadik", "Rus", "GeekTech",
"Police", "Ambulance", "Delivery","Call Center"]
var numberss = [777834413, 707, 772600095, 502041204, 776520207, 778670100, 555165510,554534356, 708123423,
222674573, 509347856]
var namesAplha = names.sorted()
for (index,item) in  namesAplha.enumerated(){
    print("\(index + 1). \(item) - \(numberss[index])")

}



//3 задание
//Викторина
var point = 0

var allQuestions = ("""
                1)Вопрос
                Какая страна больше?
                1.Казахстан   2.Индия

                3.Китай   4.Канада

                Ваш ответ:
                """,
               
                """
                2)Вопрос
                Что из этого правда?
                1.Рост Путина 166 см                         2.Пол Зайца из "Ну погоди" не-
                                                               известен
                3.Средняя температура за год в Южном полу-   4.У вомбатов треугольные фекалии
                шарии Земли выше чем в Северном

                Ваш ответ:
                """,
                
               """
                3)Вопрос
                Выбери правильный ответ
                1.Саске победит Наруто              2.Если вырвать родинку, она больше
                                                    не сможет вырасти
                3.Фтор разрушает эмаль зуба         4."Apple Watch" - самые продаваемые наручные
                                                     часы в мире

                Ваш ответ:
                """,
                
                        
                       """
                        4)Вопрос
                        За какое время Земля совершает 1/5 полного оборота
                        вокруг Солнца?
                        1.73 дня            2.85 дней
                        
                        3.2 месяца          4.Полгода
                        
                        
                        Ваш ответ:
                        """,
                        
                        """
                        5)Вопрос
                        Японский спирт саке делается из ...
                        1.Гречки     2.Пшена
                        
                        3.Ячмени     4.Риса

                        
                        Ваш ответ:
                        """,
                       
                                
                       """
                        6)Вопрос
                        Выбери правильный ответ
                        1.Iphone 14(не pro) - высер            2.Майкл Джексон жив
                        
                        3.У Цоя есть плохие песни              4.Палочки Twix разные
                        

                        Ваш ответ:
                        """,
                        
                                
                       """
                        7)Вопрос
                        Лучший президент КР это ...
                        1.Садыр Нуркожоевич              2.Соке
                        
                        3.Алмазбек Шаршенович            4.Такого не существует

                        
                        Ваш ответ:
                        """,
                        
                                
                        """
                        8)Вопрос
                        Что из этого правда?
                        1.Твое мнение кому-то интересно         2.Оливки и маслины разные продукты
                        
                        3.99% снайперов утверждают что их       4.Токтогул отдельная страна
                        больше привлекают мужчины в яркой
                        одежде
                        
                        Ваш ответ:
                        """,
                       
                        """
                        9)Вопрос
                        Что из этого неправда?
                        1.Мирбек Атабеков машина     2.Кыргызские фильмы смешные
                        3.Американцы были на луне    4.Windows лучше чем MacOS
                        

                        Ваш ответ:
                        """,
                        
                   
                    
                        """
                        10)Вопрос
                        Факториал 13
                        1.39 916 800       2.1 967 845
                                                           
                        3.266 780          4.78 145

                        Ваш ответ:
                        """)
                                


func step1(ex1:String){
    if ex1 == "4"{
        print("• Это было легко + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
} else{
        print("• К сожалению ты ответил неверно - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}


func step2(ex2:String){
    if ex2 == "2"{
        print("• Отличная работа! + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
} else{
        print("• Упс, неправильно - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}


func step3(ex3:String){
    if ex3 == "4"{
        print("• Абсолютно правильно! + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
    }else{
        print("• Неверно, но ты не расстраивайся - 50 очков")
        point -= 50
        print("Твои очки - \(point) •")
}
}


func step4(ex4:String){
    if ex4 == "1"{
        print("• Ого, правильно! + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
    }else{
        print("• Ошибки делают нас сильнее - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}

func step5(ex5:String){
    if ex5 == "4"{
        print("• И снова верный ответ! + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
    }else{
        print("• Попробуй себя в следующем вопросе - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}

func step6(ex6:String){
    if ex6 == "1"{
        print("• А ты умен + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
    }else{
        print("• Ничего, в следующий раз получится - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}

func step7(ex7:String){
    if ex7 == "4" {
        print("• Ты молодец! + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
    }else{
        print("• Соберись ! - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}

func step8(ex8:String){
    if ex8 == "3"{
        print("• Good Job! + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
} else{
        print("• Упс :( - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}

func step9(ex9:String){
    if ex9 == "2"{
        print("• Осталось совсем чуть чуть  + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
} else{
        print("• Увы.. - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}

func step10(ex10:String){
    if ex10 == "1"{
        print("• Ты сделал это!!! + 100 очков")
        point += 100
        print("Твои очки  \(point) •")
} else{
        print("• Последний был самый трудный, но ты молодец - 50 очков")
        point -= 50
        print("Твои очки  \(point) •")
}
}



func goodGame(ask:String){
    if ask == "yes" {
        
        
        func rules(tellOrNo:String){
            if  tellOrNo == "ok"{
    print("""
                         *****
Данная игра включает в себя 10 вопросов
Чтобы ответить выбери один из вариантов ответа(1,2,3,4)
За каждый правильный ответ ты будешь получать 100 очков
За каждый неправильный ответ будешь терять 50 очков
                         *****

""")
                func startGame(startOrQ:String){
                    if startOrQ == "start"{
                        
                        print(allQuestions.0)
                        let ex1 = readLine()!
                        step1(ex1: String(ex1))
                        
                        
                        print(allQuestions.1)
                        let ex2 = readLine()!
                        step2(ex2: String(ex2))
                        
                        print(allQuestions.2)
                        let ex3 = readLine()!
                        step3(ex3: String(ex3))
                        
                        print(allQuestions.3)
                        let ex4 = readLine()!
                        step4(ex4: String(ex4))
                        
                        print(allQuestions.4)
                        let ex5 = readLine()!
                        step5(ex5: String(ex5))
                        
                        print(allQuestions.5)
                        let ex6 = readLine()!
                        step6(ex6: String(ex6))
                        
                        print(allQuestions.6)
                        let ex7 = readLine()!
                        step7(ex7: String(ex7))
                        
                        print(allQuestions.7)
                        let ex8 = readLine()!
                        step8(ex8: String(ex8))
                        
                        print(allQuestions.8)
                        let ex9 = readLine()!
                        step9(ex9: String(ex9))
                        
                        print(allQuestions.9)
                        let ex10 = readLine()!
                        step10(ex10: String(ex10))
                        
                        
                        
                        print("""
                                             * * * * *
                            Поздравляю ты прошел игру! Ты заработал \(point) очков
                                      Очень неплохой результат
                                             * * * * *
                            """)
               
                    } else if  startOrQ == "q"{
                       print  ("Вы вышли из игры")
                    } else {
                     print("Неверная команда")
                    }
                    
                }
                print("start - начать   q - выйти из игры ")
                let startOrQ = readLine()!
                startGame(startOrQ: String(startOrQ))
                
}else if tellOrNo == "skip"{
    
    print(allQuestions.0)
    let ex1 = readLine()!
    step1(ex1: String(ex1))
    
    print(allQuestions.1)
    let ex2 = readLine()!
    step2(ex2: String(ex2))
    
    print(allQuestions.2)
    let ex3 = readLine()!
    step3(ex3: String(ex3))
    
    print(allQuestions.3)
    let ex4 = readLine()!
    step4(ex4: String(ex4))
    
    print(allQuestions.4)
    let ex5 = readLine()!
    step5(ex5: String(ex5))
    
    print(allQuestions.5)
    let ex6 = readLine()!
    step6(ex6: String(ex6))
    
    print(allQuestions.6)
    let ex7 = readLine()!
    step7(ex7: String(ex7))
    
    print(allQuestions.7)
    let ex8 = readLine()!
    step8(ex8: String(ex8))
    
    print(allQuestions.8)
    let ex9 = readLine()!
    step9(ex9: String(ex9))
    
    print(allQuestions.9)
    let ex10 = readLine()!
    step10(ex10: String(ex10))
    
    print("""
                         * * * * *
        Поздравляю ты прошел игру! Ты заработал \(point) очков
                  Очень неплохой результат
                         * * * * *
        """)
            
     }

        }
        print("""
        Хорошо, давай расскажу тебе правила
        "ok" - давай  "skip" - пропустить
        """)
  let tellorno1 = readLine()!
 rules(tellOrNo: String(tellorno1))

    } else if ask == "no"{
        print("Ммм.. Ок.. Понятно.. Пока..")
    } else{
        print("Такого варианта нет")
    }
}


print("""

Привет, хочешь сыграть в игру???
"yes" - да "no" - нет
""")
let ask = readLine()!

goodGame(ask: String(ask))




def setup():
    size(1000, 493)
    background(255)
    global lit, art, geo, history, movies, music, sciene, sports, tech, lit1, answerA, answerB, answerC, answerD, correct, incorrect
    lit = loadImage("lit-icons.png")
    art = loadImage("art cata.png")
    geo = loadImage("geo cata.png")
    history = loadImage("history cata.png")
    movies = loadImage("movies cata.png")
    music = loadImage("music cata.png")
    sciene = loadImage("scienecata-07.png")
    sports = loadImage("sports cata.png")
    tech = loadImage("tehc cata.png")
    lit1= loadImage("litquestion1.png")
    answerA = loadImage("Answer A.png")
    answerB = loadImage("Answer B.png")
    answerC = loadImage("Answer C.png")
    answerD = loadImage("Answer B_1.png")
    incorrect = loadImage("Incorrect.png")



def draw():
    litImg = image(lit, 20, 20)
    artImg = image(art, 350, 20)  # each png is 290px wide and 124px tall
    geoImg = image(geo, 680, 20)
    historyImg = image(history, 20, 184)
    moviesImg = image(movies, 350, 184)
    musicImg = image(music, 680, 184)
    scienceImg = image(sciene, 20, 349)
    sportsImg = image(sports, 350, 349)
    techImg = image(tech, 680, 349)
    
    


def mouseClicked(): 
    if (mouseX>19 and mouseX<311) and (mouseY>19 and mouseY<145):
        noLoop()
        fill(255)
        rect(0,0,width,height)
        litQ1 = image(lit1, 350, 0)
        answerAImg = image(answerA,160,275)
        answerBImg = image(answerB,360,275)
        answerCImg = image(answerC,560,275)
        answerDImg = image(answerD,760,275)
        if (mouseX>159 and mouseX<232) and (mouseY>274 and mouseY<348):
            fill(255)
            rect(0,0,width,height)
            incorrectImg = image(incorrect,350,300)
        else:
            print("sdfds")
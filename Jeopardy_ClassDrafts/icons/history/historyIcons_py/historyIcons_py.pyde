def setup():
    size(1000,600)
    background(255)
    global q1 , q2, q3, q4, q5
    q1 = loadImage("question 1.png")
    q2 = loadImage("question 2.png")
    q3 = loadImage("question 3.png")
    q4 = loadImage("question 4.png")
    q5 = loadImage("question 5.png")
    
def draw():
    image(q1,10,50)
    image(q2,320,50)
    image(q3,657,50)
    image(q4,10,300)
    image(q5,320,300)
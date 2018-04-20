def setup():
    size(480, 4800)

def draw():
    if  mousePressed:
        fill(0)
    else:
        fill(150)
    ellipse(mouseX, mouseY, 80, 80)

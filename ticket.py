import turtle
from turtle import *
t=turtle.Turtle()
w=turtle.Screen()
w.setup(width=1300,height=600)
w.bgpic("train.gif")
t1=turtle.Turtle()
t1.penup()
t1.setposition(-510,270)
t1.pencolor("red")
t1.pendown()
t1.pensize(12)

t1.speed(12)
t1.right(90)
t1.forward(400)
t1.left(90)
t1.forward(1150)
t1.left(90)
t1.forward(400)
t1.left(90)
t1.forward(1150)

t1.hideturtle()
t.color('black')
t.hideturtle()
t.penup()
t.pensize(5)
t.setheading(90)
t.setposition(-500,230)
t.speed(20)
t.pendown()
s=("verdana",18,"normal")
train_name="vinay"
t.write("NAME: %s" %train_name,font=s,align="left")
t.penup()
t.setposition(-500,190)
t.pendown()
t.write("AGE:",font=s,align="left")
t.penup()
t.setposition(-500,150)
t.pendown()
t.write("DATE OF BIRTH:",font=s,align="left")
t.penup()
t.setposition(-500,110)
t.pendown()
t.write("GENDER:",font=s,align="left")
t.penup()
t.setposition(-500,70)
t.pendown()
t.write("PHONE NUMBER:",font=s,align="left")
t.penup()
t.setposition(-500,30)
t.pendown()
t.write("DATE OF TRAVEL:",font=s,align="left")
t.penup()
t.setposition(-500,-10)
t.pendown()
t.write("COST:",font=s,align="left")
t.penup()
t.setposition(-50,230)
t.pendown()
t.write("TRAIN NUMBER:",font=s,align="LEFT")
t.penup()
t.setposition(-50,190)
t.pendown()
t.write("TRAIN NAME:",font=s,align="LEFT")
t.penup()
t.setposition(-50,150)
t.pendown()
t.write("ORIGIN:",font=s,align="LEFT")
t.penup()
t.setposition(-50,110)
t.pendown()
t.write("DESTINATION:",font=s,align="LEFT")
t.penup()
t.setposition(-50,70)
t.pendown()
t.write("CLASS",font=s,align="LEFT")
t.penup()
t.setposition(-50,30)
t.pendown()
t.write("COACH NUMBER:",font=s,align="LEFT")
t.penup()
t.setposition(-50,-10)
t.pendown()
t.write("TRAIN ARRIVAL TIME",font=s,align="LEFT")
turtle.done()
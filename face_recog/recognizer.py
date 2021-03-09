import cv2,os
import numpy as np
from PIL import Image

faceCascade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
cam = cv2.VideoCapture(0)
rec=cv2.face.LBPHFaceRecognizer_create() 

rec.read('recognizer/trainingdata.yml')

font = cv2.FONT_HERSHEY_SIMPLEX

flag=0
while True:
    ret,img =cam.read()
    gray=cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
    faces=faceCascade.detectMultiScale(gray, scaleFactor=1.2, minNeighbors=5, minSize=(100, 100), flags=cv2.CASCADE_SCALE_IMAGE)
    for(x,y,w,h) in faces:
        id,conf=rec.predict(gray[y:y+h,x:x+w])
        if(conf<50):
            if(id==1):
                mytext = 'Hemant'
                id='Hemant'
                cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)
            elif(id==2):
                id='Dilkhush'
                cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)
                
        else:
            id='unkown'
            cv2.rectangle(img,(x,y),(x+w,y+h),(0,0,255),2)
	    
        print(conf)   
        cv2.putText(img,str(id),(x,y-10), font,1,(0,255,255),2,cv2.LINE_AA)
        cv2.imshow('Face',img)
    if cv2.waitKey(2) & 0xFF==ord('q'):
        break
            
cam.release()
cv2.destroyAllWindows()

# import serial
import psycopg2
import time
import random
import datetime

# arduino = serial.Serial("/dev/ttyACM1")
# arduino.baudrate =9600

# conn=psycopg2.connect(database="dakkt3c1iuntiv",user="oiedoiklmgjnit",password="0a584243f50a5c9f4fba6ef430afc1ae1681b643cf19fa833d1fbbea772dec4a",host="ec2-54-83-54-224.compute-1.amazonaws.com",port="5432")
conn=psycopg2.connect(database="obstacle_detection_development",user="obstacle_detection",password="obstacle_detection",host="localhost",port="5432")
cur=conn.cursor()

# for a in arduino
id = random.randint(0,100000)
timestamps = datetime.datetime.now()
# distance = arduino.readline()
distance = 77
created_at = timestamps
updated_at = timestamps

query = "INSERT INTO detected_obstacles (id, timestamps, distance, created_at, updated_at) VALUES (%s, %s, %s, %s, %s);"
data = (id, timestamps, distance, created_at, updated_at)
cur.execute(query, data)
conn.commit()
conn.close

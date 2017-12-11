# import serial
import psycopg2
import time
import random
import uuid

# arduino = serial.Serial("/dev/ttyACM1")
# arduino.baudrate =9600

conn=psycopg2.connect(database="obstacle_detection_development",user="obstacle_detection",password="obstacle_detection",host="localhost",port="5432")
cur=conn.cursor()
# while True:
    # val=ser.readline()
data = uuid.uuid4()
ts = time.time()
# st = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
with conn:
    cur.execute("""INSERT INTO detected_obstacles values(76,NOW(),87,NOW(),NOW())""")

# conn.commit
conn.close

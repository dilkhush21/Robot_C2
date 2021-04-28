# File 

- **Check_Gas_Sensor.py**   This python script is used collect the gas sensor data and output a string of Gases data which will be read by node-red javascript function
- **CPU.sh** It's a simple shell script to determine temp and usage of CPU
- **Flows.json** This is the nodered flow which can be directly import in node-red 
- **script.sh** This Shell script is used to start the check_Gas_Sensor.py file from nodered

# point to Focus

MQ2 gas sensor can't be connected to any raspberry pi GPIO pin directly so we use ADS1115. It support 4 analog sensor and it communicate to PI with I2C.
We have already used I2c pin of raspberry pi for Display touch ,so we make software I2C on gpio pin 26 and 27. 
we have to do some change in python libaray of mq2 gas sensor i.e changing I2C address from default to new software enabled I2C GPIO pins

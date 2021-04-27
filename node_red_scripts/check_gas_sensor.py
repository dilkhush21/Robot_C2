import time
from gas_detection import GasDetection

def main():
    """Handle example."""

    print('Calibrating ...')
    detection = GasDetection()

    try:
        while True:
            ppm = detection.percentage()
            a=str(round(ppm[detection.CO_GAS],2))+":"+str(round(ppm[detection.CH4_GAS],2))+":"+str(round(ppm[detection.LPG_GAS],2))+":"+str(round(ppm[detection.ALCOHOL_GAS],2))+":"+str(round(ppm[detection.SMOKE_GAS],2))
            print(a)
            time.sleep(1)

    except KeyboardInterrupt:
        print('\nAborted by user!')

if __name__ == '__main__':
    main()

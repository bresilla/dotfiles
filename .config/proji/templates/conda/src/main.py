import time
import can
import cantools

timer_period = 10

class GNSS():
    def __init__(self):
        self.i = 0
        self.canbus = None
        self.can_init = False
        self.dcb = """VERSION ""
        BO_ 2365194522 PD_Loader: 8 SEND
          SG_ Quality : 0|32@1+ (1,0) [0|100] "%"  Loader
          SG_ Capacity : 32|32@1+ (1,0) [0|4294967295] "mm2/s"  Loader
        BO_ 2566834709 DM1: 8 SEND
          SG_ FlashRedStopLamp : 12|2@1+ (1,0) [0|3] "" Vector__XXX
          SG_ FlashAmberWarningLamp : 10|2@1+ (1,0) [0|3] "" Vector__XXX
        BO_ 2365475321 GBSD: 8 Vector__XXX
         SG_ GroundBasedMachineSpeed : 0|16@1+ (0.001,0) [0|64.255] "m/s" Vector__XXX
        BO_ 2314732030 GNSSPositionRapidUpdate: 8 Bridge
         SG_ Longitude : 32|32@1- (1E-007,0) [-180|180] "deg" Vector__XXX
         SG_ Latitude : 0|32@1- (1E-007,0) [-90|90] "deg" Vector__XXX
        """
    def send2can(self, message):
        try:
            self.canbus.send(message)
        except can.CanError:
            print("COULD NOT SEND THE MESSAGE")

def main(args=None):
    gnss_node = GNSS()
    while gnss_node.canbus is None:
        try:
            if os.name == 'nt':
                gnss_node.canbus = can.interface.Bus(channel=3, bustype='vector', app_name="CANoe")
            else:
                gnss_node.canbus = can.interface.Bus(channel='vcan0', bustype='socketcan')

        except:
            print("CAN NOT CONNECTED")
            time.sleep(1)

if __name__ == '__main__':
    main()

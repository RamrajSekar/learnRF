from pyvirtualdisplay import Display


def handleVirtualDisplay(start=True):
    display = Display(visible=0, size=(800, 600))
    if start==True:
        print("*** STARTING VIRTUAL DISPLAY ***")
        display.start()
        display.stop()
    else:
        print("*** STOPPING VIRTUAL DISPLAY ***")
        display.stop()

# print(handleVirtualDisplay())
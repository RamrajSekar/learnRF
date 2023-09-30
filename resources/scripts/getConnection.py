from pyvirtualdisplay import Display


def handleVirtualDisplay(start=True):
    display = Display(visible=0, size=(800, 600))
    if start==True:
        display.start()
    else:
        display.stop()
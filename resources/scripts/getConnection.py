from pyvirtualdisplay import Display


def handleVirtualDisplay(start=True):
    display = Display(visible=0, size=(1920, 1080))
    if start==True:
        print("*** STARTING VIRTUAL DISPLAY ***")
        display.start()
        print(display.is_alive)
    else:
        print("*** STOPPING VIRTUAL DISPLAY ***")
        print(display.is_alive)
        if display.is_alive==True:
            display.stop()


# print(handleVirtualDisplay())
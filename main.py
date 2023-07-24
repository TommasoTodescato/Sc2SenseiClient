import threading

import src.py.gui as gui
import src.py.uploader as up

if __name__ == "__main__":
	app = gui.Main()
	uploader = up.Uploader()

	up_thread = threading.Thread(target=uploader.start_auto_uploader)
	up_thread.start()

	# Must be in the main thread
	app.mainloop()
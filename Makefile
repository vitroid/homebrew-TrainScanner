##############################
#  mac personal app
##############################
macapp: $(wildcard *.py) 
	pip3 install py2app
	-rm -rf build dist
	python3 trainscanner_gui-setup.py py2app -A   #alias mode. It is not portable
	python3 converter_gui-setup.py py2app -A      #alias mode. It is not portable
install: macapp
	rm -rf '/Applications/TrainScanner.app' '/Applications/TS Converter.app'
	mv -f dist/TrainScanner.app 'dist/TS Converter.app' /Applications

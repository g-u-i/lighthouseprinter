
# CUSTOM_Engineering_VKP80III

# list paper size
lpoptions -p CUSTOM_Engineering_VKP80III -l

# PageSize/Paper Size:
#   X50MMY70MM X50MMY80MM X50MMY120MM X50MMY160MM X50MMY200MM X50MMYRoll X60MMY70MM X60MMY80MM X60MMY120MM X60MMY160MM X60MMY200MM X60MMYRoll X70MMY70MM X70MMY80MM X70MMY120MM X70MMY160MM X70MMY200MM X70MMYRoll X80MMY70MM X80MMY80MM X80MMY120MM X80MMY160MM X80MMY200MM X80MMYRoll X82MMY70MM X82MMY80MM X82MMY120MM X82MMY160MM X82MMY200MM X82MMYRoll ZX50MMY70MM ZX50MMY80MM ZX50MMY120MM ZX50MMY160MM ZX50MMY200MM ZX50MMYRoll ZX60MMY70MM ZX60MMY80MM ZX60MMY120MM ZX60MMY160MM ZX60MMY200MM ZX60MMYRoll ZX70MMY70MM ZX70MMY80MM ZX70MMY120MM ZX70MMY160MM ZX70MMY200MM ZX70MMYRoll ZX80MMY70MM ZX80MMY80MM ZX80MMY120MM ZX80MMY160MM ZX80MMY200MM *ZX80MMYRoll ZX82MMY70MM ZX82MMY80MM ZX82MMY120MM ZX82MMY160MM ZX82MMY200MM ZX82MMYRoll Custom.WIDTHxHEIGHT
# HalftoningAlgorithm/Halftoning Algorithm:
#   *Accurate Radial WTS Standard
# PrinterQuality/Printer Quality:
#   *0HighQuality 1Normal 2HighSpeed
# PrintDensity/Print Density:
#   0Density-50 1Density-37 2Density-25 3Density-12 4Density0 5Density+12 6Density+25 7Density+37 *8Density+50
# PaperPresentation/Paper Presentation:
#   0Present40mm 1Present80mm 2Present120mm 3Present160mm 4Present200mm *5Present240mm
# EjectRetractTimeout/Eject-Retract Timeout:
#   *0ERTimeoutEject 1ERTimeoutNone 2ETimeout5 3ETimeout10 4ETimeout20 5ETimeout30 6ETimeout60 7ETimeout120 8RTimeout5 10RTimeout10 9RTimeout20 11RTimeout30 12RTimeout60 13RTimeout120
# PaperMouthLed/Paper Mouth Led:
#   *0Blinking 1Off
# Continuos/Continuos:
#   0Disable *1Enable

# print using LPR
lpr -P CUSTOM_Engineering_VKP80III -o media=X80MMYRoll -o fit-to-page output.pdf


# get terminal to start on boot
nano ~/.config/lxsession/LXDE-pi/autostart

# Add this line to the end of the file:
# @lxterminal

https://stackoverflow.com/questions/36466500/on-raspberry-pi-auto-start-terminal-after-login

var height = page.evaluate(function() { return document.body.offsetHeight });

// var paperheight = (height*0.058)+'cm';
// console.log(height, paperheight);
//
// page.paperSize = { width: '8cm', height:paperheight, margin: '0.5cm' }
// page.render('github-2.pdf');

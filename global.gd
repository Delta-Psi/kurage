# NOW DEPRECATED
# only here for reference

extends Node

var BPM = 135.0
var PATTERN = [
	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],
	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],
	
	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],
	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],
	
	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],
	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],

	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],
	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],

	# bigger drumbs
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],

	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[1.0, '03'],
	[1.0, '04'],
	[1.0, '03'],
	[1.0, '04'],

	[1.0, '03'],
	[0.5, '04'],
	[0.5, '05'],
	[0.5, '06'],
	[0.5, '07'],
	[0.5, '08'],
	[0.5, '09'],
	
	# vocals begin
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.75, '04'],
	[0.75, '04'],
	[0.50, '04'],
	[0.50, '04'],
	[0.50, '01'],
	[0.50, '04'],
	[0.50, '01'],
	
	# next phrase
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '05'],
	[0.5, '06'],
	[0.5, '07'],
	[0.5, '08'],
	[0.5, '09'],
	
	# chorus
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	# next verse
	[4.0, ''],
	[4.0, ''],
	[4.0, ''],
	[4.0, ''],
	[4.0, ''],
	[4.0, ''],
	[4.0, ''],
	
	[0.75, '04'],
	[0.75, '04'],
	[0.50, '04'],
	[0.50, '06'],
	[0.50, '07'],
	[0.50, '08'],
	[0.50, '09'],
	
	# etc
	[4.0, ''],
	
	[1.0, ''],
	[0.5, '00'],
	[0.5, '00'],
	[0.5, '00'],
	[0.5, '01'],
	[0.5, '02'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],

	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '05'],
	[0.5, '06'],
	[0.5, '07'],
	[0.5, '08'],
	[0.5, '09'],
	
	[4.0, ''],
	
	# chorus again
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
	[0.5, '03'],
	[0.5, '01'],
	[0.5, '04'],
	[0.5, '01'],
]

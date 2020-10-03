running
startFor: leaftConstraints
	resultsStream nextPutAll: '<?xml version="1.0" encoding="UTF-8"?>'; lf.
	resultsStream 
		nextPutAll: '<testsuite '; 
			nextPutAll: 'name="'; nextPutAll: (self encode: self reportName); 
			nextPutAll: '" tests="'; print: leaftConstraints size;
		nextPutAll: '">'.
		
	"Now this is ugly. We want to update the time and the number of failures and errors, but still at the same time stream a valid XML. So remember this position and add some whitespace, that we can fill later."
	resultSummaryPosition := resultsStream wrappedStream position - 1.
	resultsStream nextPutAll: (String new: 100 withAll: Character space); lf.
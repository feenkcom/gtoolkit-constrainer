running
end
	resultsStream tab; nextPutAll: '<system-out><![CDATA[]]></system-out>'; lf.
	resultsStream tab; nextPutAll: '<system-err><![CDATA[]]></system-err>'; lf.
	resultsStream nextPutAll: '</testsuite>'.
	
	resultsStream wrappedStream position: resultSummaryPosition.
	resultsStream 
		nextPutAll: ' failures="'; print: self failureCount; 
		nextPutAll: '" errors="'; print: self errorCount; 
		nextPutAll: '" time="'; print: 0; 
		nextPutAll: '">'.
	
	progressStream nextPutAll: 'finished running constraints '.
running
end
	resultsStream tab; nextPutAll: '<system-out><![CDATA[]]></system-out>'; lf.
	resultsStream tab; nextPutAll: '<system-err><![CDATA[]]></system-err>'; lf.
	resultsStream nextPutAll: '</testsuite>'.
	
	resultsStream wrappedStream position: resultSummaryPosition.
	resultsStream 
		nextPutAll: ' failures="'; print: self failureCount; 
		nextPutAll: '" errors="'; print: self errorCount; 
		nextPutAll: '" time="'; print: executionTime asMilliSeconds / 1000.0; 
		nextPutAll: '">'.
	
	progressStream 
		nextPutAll: ('Finished running {1}: ' format: {self class name});
		nextPutAll: self reportName;
		close
private
logConstraintEnd: aConstraint.
	progressStream 
		nextPutAll: 'finished'; 
		crlf; 
		flush
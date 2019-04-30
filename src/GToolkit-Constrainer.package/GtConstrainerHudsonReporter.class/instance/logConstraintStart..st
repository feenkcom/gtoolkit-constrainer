private
logConstraintStart: aConstraint.
	progressStream
		nextPutAll: 'running constraint: ';
		nextPutAll: aConstraint name;
		nextPutAll: ' (';
		nextPutAll: aConstraint class name;
		nextPutAll: ')';
		flush
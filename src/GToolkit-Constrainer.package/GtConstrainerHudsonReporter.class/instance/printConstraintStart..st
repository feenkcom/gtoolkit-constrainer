private
printConstraintStart: aConstraint
	resultsStream
		tab; 
		nextPutAll: '<testcase '; 
			nextPutAll: 'classname="'; nextPutAll: (self encode: aConstraint name);  
			nextPutAll: '" name="('; nextPutAll: (self encode: aConstraint name); 
			nextPutAll: ')" time="'; print: 0.1; nextPutAll: '">'; 
		lf
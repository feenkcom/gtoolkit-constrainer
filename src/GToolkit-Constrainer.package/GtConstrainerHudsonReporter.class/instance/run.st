running
run
	Author 
		useAuthor: 'hudson'
		during: [ 
			[ 
				self setUp.
				executionTime := [ self runAll ] timeToRun ]
			ensure: [ 
				self tearDown ] ]
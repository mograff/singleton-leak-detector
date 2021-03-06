component{
	property name='leakAnalyzer' inject='leakAnalyzer@singleton-leak-detector';

	function leaks( event, rc, prc ){
		prc.leakData = leakAnalyzer.getLeaks();
		event.setView( "report/leaks" );
	}

	function tracked( event, rc, prc ){
		prc.trackedData = leakAnalyzer.getTrackedSingletons();
		event.setView( "report/tracked" );
	}

}

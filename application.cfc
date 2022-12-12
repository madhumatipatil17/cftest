component {

    this.name = "myApplication";
    this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
    this.datasource = "cfdocexamples";
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes
    this.customTagPaths = [ expandPath('/myApp/CustomTags') ];
    
    function onApplicationStart() {
        writeDump("hello I am alive");
       
    }

    function onSessionStart() {
        
    }

    // the target page is passed in for reference,
    // but you are not required to include it
    function onRequestStart( string targetPage ) {
        
    }

    function onRequest( string targetPage ) {
        include arguments.targetPage;
        
    }

    function onRequestEnd() {
    
    }

    function onSessionEnd( struct SessionScope, struct ApplicationScope ) {}

    function onApplicationEnd( struct ApplicationScope ) {}

   function onError( any Exception, string EventName ) {
    // writeDump(#arguments#);
  }

}

/* chrome://settings/cookies/detail?site=127.0.0.1
QueryExecute(
        'INSERT INTO art ( artistID, artName, description, isSold, largeImage, mediaID, price ) VALUES ( ?,?,?,?,?,?,? )',
        [ 1, 'appstart', 'test startapp desc', 1, 'img.png', 1, 1 ],
        { datasource = 'cfartgallery', result="qryResult" }
    ); */
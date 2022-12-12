<cfif NOT structKeyExists(session,'user')>
    <cflocation url = "login.cfm" addToken="no">  
</cfif>
<cfinclude template="header.cfm">
<cfset empId = "#URL.EMP_ID#">
<cfscript>
    myObj = createObject("component", "components.employee");
    getresults = myObj.deleteEmpbyId(empId);
</cfscript>
<cflocation  url="home.cfm">
<cfinclude template="footer.cfm">
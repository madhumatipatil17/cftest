
<cfset userId = "#form.userId#">
<cfset pass = "#form.pwd#">



<cfif structKeyExists(form, "userId") AND structKeyExists(form,"pwd")>

<cfscript>
    obj = createObject("component", "components.employee");
    res = obj.checkLogin(userId,pass);
</cfscript>

<cfif res.recordcount GT 0>
    <cfset session.user = "#userId#">
    <cflocation  url="home.cfm" addToken="no">
    <cfelse>
    <cflocation  url="login.cfm"> 
</cfif>

</cfif>



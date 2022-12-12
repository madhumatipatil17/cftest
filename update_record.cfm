<cfif NOT structKeyExists(session,'user')>
     <cflocation url = "login.cfm" addToken="no">  
</cfif> 
<cfinclude template="header.cfm">
<html>
<title> CF Test</title>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
<cfset empId = #URL.EMP_ID#>
<cfif structKeyExists(FORM, "DEP")> 
<cfset dep = "#form.DEP#">
<cfset email = "#form.EMAIL#">
<cfset location = "#form.LOCATION#">
<cfset phone = "#form.PHONE#">
<cfscript>
    Obj = createObject("component", "components.employee");
    Obj.updateEmployee(empId,dep,email,location,phone);
</cfscript>
 <cflocation  url="home.cfm" addToken="no"> 
</cfif>
<cfscript>
    myObj = createObject("component", "components.employee");
    results = myObj.getEmployeeById(empId);
</cfscript>
<form method="post" action="#CGI.SCRIPT_NAME#">
<table class="table table-warning ">
<thead>
<tr>
<th scope="col">EMP_ID</th>
<th scope="col">NAME</th>
<th scope="col">IM_ID</th>
<th scope="col">DEPARTMENT</th>
<th scope="col">EMAIL</th>
<th scope="col">LOCATION</th>
<th scope="col">PHONE</th>
<th scope="col">ACTION</th>
</tr>
</thead>
<tbody>
<cfoutput query="results">
<tr>
<th scope="row">#results.EMP_ID#</th>
<td>#results.FIRSTNAME# &nbsp #results.LASTNAME# </td>
<td>#results.IM_ID#</td>
<td><input type="text" name="dep" value="#results.DEPARTMENT#"></td>
<td><input type="text" name="email" value="#results.EMAIL#"></td>
<td><input type="text" name="location" value="#results.LOCATION#"></td>
<td><input type="text" name="phone" value="#results.PHONE#"></td>
<td><button type="submit">Update</button></td>
</tr>
</cfoutput>
</tbody>
</table>
</form>
</body>
</html>
<cfinclude template="footer.cfm">
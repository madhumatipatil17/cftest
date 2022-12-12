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
<Body>

<cfscript>
    Obj = createObject("component", "components.employee");
    getresults = Obj.getEmployeeList();
</cfscript>


<a href="addemployee.cfm" style="color:black;font-size:36px;">Add Employee</a>

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
<cfoutput query="getresults">
<tr>
<th scope="row">#getresults.EMP_ID#</th>
<td>#getresults.FIRSTNAME# &nbsp #getresults.LASTNAME# </td>
<td>#getresults.IM_ID#</td>
<td>#getresults.DEPARTMENT#</td>
<td>#getresults.EMAIL#</td>
<td>#getresults.LOCATION#</td>
<td>#getresults.PHONE#</td>
<td><a href="update_record.cfm?EMP_ID=#getresults.EMP_ID#">Update</a><br><a href="deleterecord.cfm?EMP_ID=#getresults.EMP_ID#">Delete</a></td>
</tr>
</cfoutput>
</tbody>
</table>

</body>
</html>

<cfinclude template="footer.cfm">
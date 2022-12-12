<cfif NOT structKeyExists(session,'user')>
    <cflocation url = "login.cfm" addToken="no">  
</cfif>
<cfinclude template="header.cfm">

<html>
<title> CF </title>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<Body>

<cfif structKeyExists(FORM, "empId")> 
<cfset empId = "#form.empId#">
<cfset fname = "#form.fname#">
<cfset lname = "#form.lname#">
<cfset imid = "#im_id#">
<cfset dep = "#form.DEP#">
<cfset email = "#form.EMAIL#">
<cfset location = "#form.LOCATION#">
<cfset phone = "#form.PHONE#">
<cfscript>
   Obj = createObject("component", "components.employee");
   Obj.addEmployee(empId,fname,lname,imid,dep,email,location,phone);
</cfscript>
 <cflocation  url="home.cfm" addToken="no"> 
</cfif>


<div align="center">
 
<h1>Add Employee Details</h1>

<form method="post">
EMP_ID:<input class="form-control" type="text" name="empId" style="width:250px"><br><br>
FIRST NAME:<input class="form-control" type="text" name="fname" style="width:250px"><br><br>
LAST NAME:<input class="form-control" type="text" name="lname" style="width:250px"><br><br>
IM_ID:<input class="form-control" type="text" name="im_id" style="width:250px"><br><br>
DEPARTMENT:<input class="form-control" type="text" name="dep"style="width:250px" ><br><br>
EMAIL:<input class="form-control" type="text" name="email" style="width:250px"><br><br>
LOCATION:<input class="form-control" type="text" name="location" style="width:250px"><br><br>
PHONE:<input class="form-control" type="text" name="phone" style="width:250px"><br><br>
<button type="submit" class="btn btn-success">Add Employee</button>
</form>
</div>
</body>
</html>

<cfinclude template="footer.cfm">
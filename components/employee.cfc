<cfcomponent displayname="Employee" hint="ColdFusion Component for Employees">
 
<!--- validating the user --->
 <cffunction name="checkLogin" returntype="query">
      <cfargument name="userId" type ="string">
      <cfargument name="pwd" type ="string">
   <cfquery name="getLogin" datasource="cfdocexamples">
select * from logininfo 
where USERID= <cfqueryparam  value="#arguments.userid#" CFSQLType="CF_SQL_CHAR">
and PASSWORD=<cfqueryparam  value="#arguments.pwd#" CFSQLType="CF_SQL_CHAR">
   </cfquery>
   <cfreturn getLogin>
 </cffunction>

<!--- All employees from the database --->
  <cffunction name="getEmployeeList" returntype="query"> 
   <cfquery name="getEmployees" datasource="cfdocexamples">
	select * from EMPLOYEES 
   </cfquery>
   <cfreturn getEmployees>
 </cffunction>


<!--- Retrieving employee details by Id --->

<cffunction name="getEmployeeById" returntype="query">
     <cfargument name="empId" type ="numeric">
   <cfquery name="getemp" datasource="cfdocexamples">
	select * from EMPLOYEES
    where EMP_ID=<cfqueryparam  value="#arguments.empId#" CFSQLType=" CF_SQL_INTEGER">
   </cfquery>
   <cfreturn getemp>
 </cffunction>

<!--- Adding new employee --->
<cffunction name="addEmployee" hint="add employee details" returntype="void">
     <cfargument name="empId" type ="numeric">
     <cfargument name="fname" type ="string">
     <cfargument name="lname" type ="string">
     <cfargument name="ImId" type ="string">
     <cfargument name="dep" type ="string">
     <cfargument name="email" type ="string">
     <cfargument name="location" type ="string">
     <cfargument name="phone" type ="string">
   <cfquery name="add" datasource="cfdocexamples">
INSERT INTO employees(EMP_ID,FIRSTNAME, LASTNAME, IM_ID,EMAIL,DEPARTMENT,LOCATION,PHONE) 
VALUES(#arguments.empId#, '#arguments.fname#', '#arguments.lname#', '#arguments.ImId#','#arguments.email#','#arguments.dep#','#arguments.location#','#arguments.phone#')
   </cfquery>
 </cffunction>



<!--- Deleting an employee --->
<cffunction name="deleteEmpbyId"
	hint="retrieves employee by Id" returntype="void">
     <cfargument name="empId" type ="numeric">
   <cfquery name="deleterecord" datasource="cfdocexamples">
	  delete from EMPLOYEES
    where EMP_ID=<cfqueryparam  value="#arguments.empId#" CFSQLType=" CF_SQL_INTEGER">
   </cfquery>
 </cffunction>



 <!--- Updating Employee details --->

<cffunction name="updateEmployee" hint="updates employee details">
     <cfargument name="empId" type ="numeric">
     <cfargument name="dep" type ="string">
     <cfargument name="email" type ="string">
     <cfargument name="location" type ="string">
     <cfargument name="phone" type ="string">

   <cfquery name="getupdate" datasource="cfdocexamples">
        UPDATE EMPLOYEES SET DEPARTMENT='#arguments.dep#', EMAIL='#arguments.email#', LOCATION='#arguments.location#',PHONE='#arguments.phone#' 
        where EMP_ID=<cfqueryparam  value="#arguments.empId#" CFSQLType=" CF_SQL_INTEGER">
   </cfquery>
 </cffunction>

</cfcomponent>


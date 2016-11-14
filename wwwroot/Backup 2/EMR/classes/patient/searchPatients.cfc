<cfcomponent output="false">
    <cffunction name="searchPatients" access="remote" returnformat="json" returntype="any">
        <cfargument name="by" required="yes">
        <cfargument name="searchInput" required="yes">

        <cfif #by# EQ "id">
            <cfquery name="patientQuery" datasource="emrApp">
                SELECT * FROM patientData WHERE pFname = '#searchInput#'
            </cfquery>
        </cfif>
        <cfset var response=''>

        <cfif patientQuery.RecordCount EQ 0>
          <cfset response = "<tr><td colspan=5>Sorry. Cant find any patient with your search input</td></tr>">
        <cfelse>
            <cfloop query="patientQuery">
                <cfset var response &="<tr>">
                <cfset var response &="<td>" & #patientId# & "</td><td>" & #pFname# & "</td><td>" & #pLname# & "</td><td>" & #pDOB# & "</td><td>October 31, 2016</td>">
            </cfloop>
        </cfif>

        <cfreturn response>
    </cffunction>
</cfcomponent>

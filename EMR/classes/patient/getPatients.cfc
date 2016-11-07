<cfcomponent output="false">

    <cffunction name="countPatients" access="remote" returnformat="json" returntype="any">
        <!--- Get data from database --->
        <cfquery name="countQuery" datasource="emrApp">
            SELECT COUNT(*) AS patientNum FROM patientData
        </cfquery>
        <cfreturn countQuery.patientNum>
    </cffunction>

    <cffunction name="getPatients" access="remote" returnformat="json" returntype="any">
        <cfset var response="">

        <cfquery name="patientQuery" datasource="emrApp">
            SELECT * FROM patientData
        </cfquery>

        <cfloop query="patientQuery">
            <cfset var response &= "<tr>">
            <cfset var response &= "<td>" & #patientId# & "</td><td>" & #pFname# & "</td><td>" & #pLname# & "</td><td>" & #DateFormat(pDOB, "mmm. dd, yyyy")# & "</td><td>" & #DateFormat(regDate, "mmm. dd, yyyy")# &"</td>">
        </cfloop>

        <cfreturn response>
    </cffunction>
</cfcomponent>

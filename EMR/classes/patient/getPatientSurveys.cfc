<cfcomponent output="false">
    <cffunction name="getPatientSurveys" access="remote" returnformat="json" returntype="any">
        <cfargument name="pid" required="true"/>
        <cfset var response="">

        <cfquery name="patientSurveyQuery" datasource="emrdb">
            SELECT * FROM surveyData
            WHERE patientID = #pid#
        </cfquery>

        <cfloop query="patientSurveyQuery">
            <cfset var response &="<tr>">
            <cfset var response &="<td>" & #surveyID# & "</td><td>" & "N/A" & "</td><td>" & "<button class=""btn btn-xs"" onclick=""viewPatientSurveyDetail('#surveyID#')"">View</button> " & "</td>">
        </cfloop>

        <cfreturn response>
    </cffunction>
</cfcomponent>

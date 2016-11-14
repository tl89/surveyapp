<cfcomponent output="false">
    <cffunction name="getPatientSurveys" access="remote" returnformat="json" returntype="any">
        <cfargument name="pid" required="true"/>
        <cfset var response="">

        <cfquery name="patientSurveyQuery" datasource="emrApp">
            SELECT * FROM surveyData
            WHERE patientId = #pid#
        </cfquery>

        <cfloop query="patientSurveyQuery">
            <cfset var response &="<tr>">
            <cfset var response &="<td>" & #surveyId# & "</td><td>" & "October 31, 2016" & "</td><td>" & "<button class=""btn btn-xs"" onclick=""viewPatientSurveyDetail('#surveyid#')"">View</button> " & "</td>">
        </cfloop>

        <cfreturn response>
    </cffunction>
</cfcomponent>

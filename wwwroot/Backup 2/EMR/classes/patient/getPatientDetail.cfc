<cfcomponent output="false">

    <cffunction name="getPatientDetail" access="remote" returnformat="json" returntype="any">
      <cfargument name="pid" required="true"/>
        <cfquery name="patientDetailQuery" datasource="emrApp">
            SELECT * FROM patientData WHERE patientId = '#pid#'
        </cfquery>

        <cfset response = {
          "fname" = #patientDetailQuery.pFname#,
          "lname" = #patientDetailQuery.pLname#,
          "dob" = #patientDetailQuery.pDOB#
          }>
        <cfreturn response>
    </cffunction>

    <cffunction name="getPatientSurveyNum" access="remote" returnformat="json" returntype="any">
      <cfargument name="pid" required="true"/>
        <cfquery name="surveyCountQuery" datasource="emrApp">
            SELECT COUNT(*) AS surveyNum FROM surveyData WHERE patientId = '#pid#'
        </cfquery>
        <cfreturn surveyCountQuery.surveyNum>
    </cffunction>

</cfcomponent>

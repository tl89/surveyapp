<cfcomponent output="false">
  <cffunction name="getSurvCode" access="remote" returnformat="json" returnType="any">
    <cfquery name="codeQuery" datasource="surveyApp">
		SELECT surveyCode, codeAvail, codeUsed
		FROM surveyTracker
		WHERE adminId = '#session.adminId#'
	</cfquery>
	<cfreturn codeQuery>
  </cffunction>
	  
  <cffunction name="changeSurvCode" access="remote" returnformat="json" returnType="any">
	<cfquery name="updateSurvCode" datasource="surveyApp">
		UPDATE surveyTracker
		SET codeAvail = #form.codeAvail#
		WHERE surveyCode = '#form.survCode#' AND adminId = '#session.adminId#'
	</cfquery>
	<cflocation url = "/SURVEYAPP/pages/adminPage.cfm" >
  </cffunction>
	  
  <cffunction name="createSurvCode" access="remote" returnformat="json" returnType="any">
	<cfquery name="newSurvCode" datasource="surveyApp">
		INSERT INTO surveyTracker(adminId, surveyCode, codeAvail)
		VALUE ('#session.adminId#', '#form.survCode#', '#form.codeAvail#')
	</cfquery>
	<cflocation url = "/SURVEYAPP/pages/adminPage.cfm" >
  </cffunction>
</cfcomponent>
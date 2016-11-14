<cfcomponent output="false">
	<!-- Checker for if patient exists or not -->
	<cffunction name="insertSurveyData" access="remote" returnformat="json" returnType="any">
		<cfquery name="checkPatient" datasource="emrApp">
		SELECT * FROM patientData
		WHERE pFname = '#form.fname#'
		</cfquery>
		
		<!-- if patient exists -->
	<cfif len(checkPatient.pFname)>
		<!-- Find old patient -->
		<cfquery name="patientDataQuery" datasource="emrApp">
		SELECT patientId FROM patientData
		WHERE pFname= '#form.fname#'
		</cfquery>
		<!-- Insert survey data -->
		<cfquery datasource="emrApp" name="insertTest">
		INSERT INTO surveyData(patientId, question1, question2, question3)
		VALUES ('#patientDataQuery.patientId#','#form.q1#','#form.q2#','#form.q3#')     
		</cfquery>
		<!-- if patient doesn't exists -->
		<cfelse>
			<!-- Create new patient -->
			<cfquery datasource="emrApp" name="newPatient">
				INSERT INTO patientData(pFname, pLname, pDOB)
				VALUES ('#form.fname#','#form.lname#','#form.dob#')  
			</cfquery>
			<!-- Find new patient -->
			<cfquery name="findNewPatient" datasource="emrApp">
				SELECT patientId FROM patientData
				WHERE pFname= '#form.fname#'
			</cfquery>
			<!-- Insert survey questions for new patient -->
			<cfquery datasource="emrApp" name="newPatSurv">
				INSERT INTO surveyData(patientId, question1, question2, question3)
				VALUES ('#findNewPatient.patientId#','#form.q1#','#form.q2#','#form.q3#')     
			</cfquery>
	</cfif>
	</cffunction>
</cfcomponent>



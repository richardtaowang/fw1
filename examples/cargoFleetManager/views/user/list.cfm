<cfset local.users = rc.data>

<cfquery name="myQuery" datasource="MarineData">
	-- Need [ ] bc of the -
	SELECT * FROM [CSV-DS_USFlag-Fleet_2022_1_16]
</cfquery>
<!---
<cfoutput query="myQuery">
	    <!-- Access individual columns by column name NOTE [ ] for space in column. Try to Avoid spaces in column name -->
			<!--- #myQuery.IMO_NUMBER#
			#myQuery.Vessel_Name#
			#myQuery.Ship_Type#
			#myQuery.Gross_Tons#
			#myQuery.Deadweight_Tons# --->
			<!-- You can also access columns using the query variable and row index -->
			<!--- #myQuery['columnName'][myQuery.CurrentRow]# --->

			<!-- Use loop index for iterating through rows -->
			<!--- #myQuery.columnName[currentRow]# --->
<table border="0" cellspacing="0">
	<col width="80" />
	<thead>
		<tr>
			<th>IMO Number</th>
			<th>Vessel Name</th>
			<th>Ship Type</th>
			<th>Gross Tons</th>
			<th>Deadweight Tons</th>
		</tr>
	</thead>
	<tbody>
		<cfif structCount(local.users) EQ 0>
			<tr><td colspan="5">No users exist but <a href="index.cfm?action=user.form">new ones can be added</a>.</td></tr>
		</cfif>
		<!--- <cfloop collection="#myQuery#" item="IMO_NUMBER"> --->

			<!--- <cfset local.user = myQuery[IMO_NUMBER]> --->

			<tr>
				<td>#myQuery.IMO_NUMBER#</td>
				<td>#myQuery.Vessel_Name#</td>
				<td>#myQuery.Ship_Type#</td>
				<td>#myQuery.Gross_Tons#</td>
				<td>#myQuery.Deadweight_Tons#</td>
				<!--- <td><a href="index.cfm?action=user.form&id=#local.id#">#local.id#</a></td>
				<td><a href="index.cfm?action=user.form&id=#local.id#">#local.user.getFirstName()# #local.user.getLastName()#</a></td>
				<td>#local.user.getEmail()#</td>
				<td>#local.user.getDepartment().getName()#</td>
				<td><a href="index.cfm?action=user.delete&id=#local.id#">DELETE</a></td> --->
			</tr>
		<!--- </cfloop> --->
	</tbody>
</table>
</cfoutput> --->

<table border="0" cellspacing="0">
	<col width="80" />
	<thead>
		<tr>
			<th>IMO Number</th>
			<th>Vessel Name</th>
			<th>Ship Type</th>
			<th>Gross Tons</th>
			<th>Deadweight Tons</th>
			<th>Year Of Build</th>
			<th>Operator</th>
			<th>MSP</th>
			<th>VISA</th>
			<th>VTA</th>
			<th>Jones Act Eligible</th>
			<th>Militarily Useful</th>
		</tr>
	</thead>
	<tbody>
		<cfif myQuery.recordCount EQ 0>
			<tr><td colspan="5">No records found.</td></tr>
		<cfelse>
			<cfoutput query="myQuery">
				<tr>
					<td>#myQuery.IMO_NUMBER#</td>
					<td>#myQuery.Vessel_Name#</td>
					<td>#myQuery.Ship_Type#</td>
					<td>#myQuery.Gross_Tons#</td>
					<td>#myQuery.Deadweight_Tons#</td>
					<td>#myQuery.Year_Of_Build#</td>
					<td>#myQuery.Operator#</td>
					<td>#myQuery.MSP#</td>
					<td>#myQuery.VISA#</td>
					<td>#myQuery.VTA#</td>
					<td>#myQuery.Jones_Act_Eligible#</td>
					<td>#myQuery.Militarily_Useful#</td>
				</tr>
			</cfoutput>
		</cfif>
	</tbody>
</table>

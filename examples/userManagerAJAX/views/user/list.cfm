<cfset local.users = rc.data>

<cfquery name="myQuery" datasource="MarineData">
	-- Need [ ] bc of the -
	SELECT * FROM [CSV-DS_USFlag-Fleet_2022_1_16]
</cfquery>

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
			<!--- <th>Delete</th> --->
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

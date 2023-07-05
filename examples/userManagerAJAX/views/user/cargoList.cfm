
<cfquery name="cargoQuery" datasource="CargoData">
	SELECT * FROM cargoTheft
</cfquery>

<table border="0" cellspacing="0">
	<col width="80" />
	<thead>
		<tr>
			<th>State</th>
			<th>Number of Reporting Agencies</th>
			<th>Incidents Reported</th>
			<th>Stolen Value in USD</th>
			<th>Recovered Value in USD</th>
			<th>Percentage Recovered</th>
		</tr>
	</thead>
	<tbody>
		<cfif cargoQuery.recordCount EQ 0>
			<tr><td colspan="5">No records found.</td></tr>
		<cfelse>
			<cfoutput query="cargoQuery">
				<tr>
					<td>#cargoQuery.State#</td>
          <td>#cargoQuery.Number_of_Agencies_Reporting_an_Incident#</td>
          <td>#cargoQuery.Number_of_Incidents_Reported#</td>
          <td>$#cargoQuery.Stolen_Value_USD#</td>
          <td>$#cargoQuery.Recovered_Value_USD#</td>
          <td>#cargoQuery.Percent_Recovered#%</td>
				</tr>
			</cfoutput>
		</cfif>
	</tbody>
</table>

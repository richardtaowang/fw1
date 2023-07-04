<cfparam name="form.IMONUMBER" default="">
<cfparam name="form.VesselName" default="">
<cfparam name="form.ShipType" default="">

<h3>Vessel Info</h3>

<form id="userForm" class="familiar medium" method="post" action="#CGI.SCRIPT_NAME#">
    <div class="field">
        <label for="IMONUMBER" class="label">IMO NUMBER:</label>
        <input type="text" name="IMONUMBER" id="IMONUMBER" required>
    </div>

    <div class="field">
        <label for="VesselName" class="label">Vessel Name:</label>
        <input type="text" name="VesselName" id="VesselName" required>
    </div>

    <div class="field">
        <label for="ShipType" class="label">Ship Type:</label>
        <input type="text" name="ShipType" id="ShipType" required>
    </div>

    <div class="control">
        <input type="submit" name="submit" value="Save User">
    </div>
</form>

<cfif structKeyExists(form, "submit")>
    <cftry>

        <cfquery datasource="MarineData">
            INSERT INTO [CSV-DS_USFlag-Fleet_2022_1_16] (IMO_NUMBER, Vessel_Name, Ship_Type)
            VALUES (
                <cfqueryparam value="#form.IMONUMBER#" cfsqltype="CF_SQL_INTEGER">,
                <cfqueryparam value="#form.VesselName#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#form.ShipType#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>

        <cfheader statuscode="201" statustext="Created">

        <cfset successMessage = "Data has been successfully inserted.">
        <cfset response = {
            "id": newRecordID,
            "message": "Resource created successfully."
        }>
        <cfoutput>#serializeJSON(response)#</cfoutput>

        <cfcatch type="any">
            <cfset errorMessage = "Error inserting data: #cfcatch.message#">
        </cfcatch>
    </cftry>
</cfif>

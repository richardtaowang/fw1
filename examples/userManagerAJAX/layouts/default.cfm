<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Richard Wang's FW1 Cargo Fleet Manager</title>
<link rel="stylesheet" type="text/css" href="assets/css/styles.css" />
<script type="text/javascript" src="assets/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="assets/js/jquery-forms-2.33.js"></script>
<script type="text/javascript" src="assets/js/behaviors.js"></script>
</head>
<body>

<div id="container">

	<h1>Cargo Fleet Manager</h1>
	<h2>Datasets from the U.S. Department of Transportation and the FBI</h2>

	<ul class="nav horizontal clear">
		<li><a href="index.cfm">Home</a></li>
		<li><a href="index.cfm?action=user.list" title="View the list of vessels">Vessels</a></li>
		<li><a href="index.cfm?action=user.form" title="See Vessel Data Visualizers">Vessel Resources</a></li>
		<li><a href="index.cfm?action=user.cargoList" title="View data for Cargo Theft">Cargo Theft</a></li>
		<li><a href="index.cfm?action=user.cargoData" title="See Cargo Theft Data Visualizers">Cargo Theft Resources</a></li>
		<li><a href="index.cfm?reload=true" title="Resets framework cache">Reload</a></li>
	</ul>

	<br />

	<div id="primary">
		<cfoutput>#body#</cfoutput>
	</div>

</div>

</body>
</html>
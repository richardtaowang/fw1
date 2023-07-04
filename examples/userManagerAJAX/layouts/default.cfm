<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>U.S. Department of Transportation: Privately-Owned Merchant Fleet Manager</title>
<link rel="stylesheet" type="text/css" href="assets/css/styles.css" />
<script type="text/javascript" src="assets/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="assets/js/jquery-forms-2.33.js"></script>
<script type="text/javascript" src="assets/js/behaviors.js"></script>
</head>
<body>

<div id="container">

	<h1>U.S. Department of Transportation:</h1>
	<h2>Privately-Owned Merchant Fleet Manager</h2>

	<ul class="nav horizontal clear">
		<li><a href="index.cfm">Home</a></li>
		<li><a href="index.cfm?action=user.list" title="View the list of users">Vessels</a></li>
		<li><a href="index.cfm?action=user.form" title="Fill out form to add new user">Add Vessel</a></li>
		<li><a href="index.cfm?reload=true" title="Resets framework cache">Reload</a></li>
	</ul>

	<br />

	<div id="primary">
		<cfoutput>#body#</cfoutput>
	</div>

</div>

</body>
</html>
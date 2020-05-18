<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add your Boondock</title>
</head>
<body>
<a href="/" button type="button" class="btn btn-outline-primary">Home</a>
<br>
<h2> Add Your Boondock</h2>
<br>
Fields with * are mandatory
<br>
	<form action="addBoondock.do" method="POST">
	
	Boondock Name:
	<input type="text" name="name" placeholder="Name Your Boondock">*
	<br> Is it Free?:
	<select type="text" name="free"  placeholder="unspecified">
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select><br>
	<br> Location:
	<input type="text" name="location" placeholder="Enter City, State">*
	<br><br> GPS Latitude:
	<input type="text" name="gpsLatitude" placeholder="ex. 38.96252">
	<br><br> GPS Longitude:
	<input type="text" name="gpsLongitude" placeholder="ex. -104.99779">
	<br> <br>Elevation:
	<input type="text" name="elevation" placeholder="in feet">
	<br><br> Land Management:
	<input type="text" name="management" placeholder="Who oversees the land?">
	<br><br> Activities
	<input type="text" name="activities" placeholder="ammenities, things to do">
	<br><br> Average Rating of Boondock:
	<input type="text" name="averageRating" placeholder="Between 1-5">
	<br><br> Number of Reviews:
	<input type="text" name="numberOfReviews" placeholder="How many submitted reviews">
	<br><br> Insert Map Image:
	<input type="text" name="mapImage" placeholder="enter URL for map image">
	<br><br> Insert Link for Local Weather:
	<input type="text" name="currentWeather" placeholder="enter URL for map image">
	<br><br> Length of Allowed Stay:
	<input type="text" name="lengthOfAllowedStay" placeholder="How many days can one stay?">
	<br><br> Insert a Photo:
	<input type="text" name="photo" placeholder="enter URL for image">
<br>
	<input type="submit" value="Create your Boondock" />
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/" button type="button" class="btn btn-outline-primary">Home</a>
<br>
	<form action="addBoondock.do" method="POST">
	
	Boondock Name:
	<input type="text" name="name" placeholder="unspecified">
	<br> Is it Free?:
	<select type="text" name="free"  placeholder="unspecified">
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select><br><br>
	<br> Location:
	<input type="text" name="location" placeholder="Enter City, State">
	<br> GPS Latitude:
	<input type="text" name="gpsLatitude" placeholder="ex. 38.96252">
	<br> GPS Longitude:
	<input type="text" name="gpsLongitude" placeholder="ex. -104.99779">
	<br> Elevation:
	<input type="text" name="elevation" placeholder="in feet">
	<br> Land Management:
	<input type="text" name="management" placeholder="Who oversees the land?">
	<br> Activities
	<input type="text" name="activities" placeholder="ammenities, things to do">
	<br> Average Rating of Boondock:
	<input type="text" name="averageRating" placeholder="Between 1-5">
	<br> Number of Reviews:
	<input type="text" name="numberOfReviews" placeholder="How many submitted reviews">
	<br> Insert Map Image:
	<input type="text" name="mapImage" placeholder="enter URL for map image">
	<br> Insert Link for Local Weather:
	<input type="text" name="currentWeather" placeholder="enter URL for map image">
	<br> Length of Allowed Stay:
	<input type="text" name="lengthOfAllowedStay" placeholder="How many days can one stay?">
	<br> Insert a Photo:
	<input type="text" name="photo" placeholder="enter URL for image">
<br>
	<input type="submit" value="Create your Boondock" />
</form>

</body>
</html>
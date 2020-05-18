package com.skilldistillery.boondock.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Boondock {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String name;

	private boolean free;

	private String location;

	@Column(name = "gps_latitude")
	private String gpsLatitude;

	@Column(name = "gps_longitude")
	private String gpsLongitude;

	private Integer elevation;

	private String management;

	private String activities;

	private String photo;

	@Column(name = "average_rating_out_of_five")
	private Double averageRating;

	@Column(name = "number_of_reviews")
	private Integer numberOfReviews;

	@Column(name = "map_image")
	private String mapImage;

	@Column(name = "current_weather")
	private String currentWeather;

	@Column(name = "length_of_allowed_stay_in_days")
	private Integer lengthOfAllowedStay;

	// methods

	public Boondock() {

	}

	public Boondock(String name, boolean free, String location, String gpsLatitude, String gpsLongitude,
			Integer elevation, String management, String activities, String photo, Double averageRating,
			Integer numberOfReviews, String mapImage, String currentWeather, Integer lengthOfAllowedStay) {
		super();
		this.name = name;
		this.free = free;
		this.location = location;
		this.gpsLatitude = gpsLatitude;
		this.gpsLongitude = gpsLongitude;
		this.elevation = elevation;
		this.management = management;
		this.activities = activities;
		this.photo = photo;
		this.averageRating = averageRating;
		this.numberOfReviews = numberOfReviews;
		this.mapImage = mapImage;
		this.currentWeather = currentWeather;
		this.lengthOfAllowedStay = lengthOfAllowedStay;
	}

	public Boondock(int id, String name, boolean free, String location, String gpsLatitude, String gpsLongitude,
			Integer elevation, String management, String activities, String photo, Double averageRating,
			Integer numberOfReviews, String mapImage, String currentWeather, Integer lengthOfAllowedStay) {
		super();
		this.id = id;
		this.name = name;
		this.free = free;
		this.location = location;
		this.gpsLatitude = gpsLatitude;
		this.gpsLongitude = gpsLongitude;
		this.elevation = elevation;
		this.management = management;
		this.activities = activities;
		this.photo = photo;
		this.averageRating = averageRating;
		this.numberOfReviews = numberOfReviews;
		this.mapImage = mapImage;
		this.currentWeather = currentWeather;
		this.lengthOfAllowedStay = lengthOfAllowedStay;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isFree() {
		return free;
	}

	public void setFree(boolean free) {
		this.free = free;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getGpsLatitude() {
		return gpsLatitude;
	}

	public void setGpsLatitude(String gpsLatitude) {
		this.gpsLatitude = gpsLatitude;
	}

	public String getGpsLongitude() {
		return gpsLongitude;
	}

	public void setGpsLongitude(String gpsLongitude) {
		this.gpsLongitude = gpsLongitude;
	}

	public Integer getElevation() {
		return elevation;
	}

	public void setElevation(Integer elevation) {
		this.elevation = elevation;
	}

	public String getManagement() {
		return management;
	}

	public void setManagement(String management) {
		this.management = management;
	}

	public String getActivities() {
		return activities;
	}

	public void setActivities(String activities) {
		this.activities = activities;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Double getAverageRating() {
		return averageRating;
	}

	public void setAverageRating(Double averageRating) {
		this.averageRating = averageRating;
	}

	public Integer getNumberOfReviews() {
		return numberOfReviews;
	}

	public void setNumberOfReviews(Integer numberOfReviews) {
		this.numberOfReviews = numberOfReviews;
	}

	public String getMapImage() {
		return mapImage;
	}

	public void setMapImage(String mapImage) {
		this.mapImage = mapImage;
	}

	public String getCurrentWeather() {
		return currentWeather;
	}

	public void setCurrentWeather(String currentWeather) {
		this.currentWeather = currentWeather;
	}

	public Integer getLengthOfAllowedStay() {
		return lengthOfAllowedStay;
	}

	public void setLengthOfAllowedStay(Integer lengthOfAllowedStay) {
		this.lengthOfAllowedStay = lengthOfAllowedStay;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Boondock [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", free=");
		builder.append(free);
		builder.append(", location=");
		builder.append(location);
		builder.append(", gpsLatitude=");
		builder.append(gpsLatitude);
		builder.append(", gpsLongitude=");
		builder.append(gpsLongitude);
		builder.append(", elevation=");
		builder.append(elevation);
		builder.append(", management=");
		builder.append(management);
		builder.append(", activities=");
		builder.append(activities);
		builder.append(", photo=");
		builder.append(photo);
		builder.append(", averageRating=");
		builder.append(averageRating);
		builder.append(", numberOfReviews=");
		builder.append(numberOfReviews);
		builder.append(", mapImage=");
		builder.append(mapImage);
		builder.append(", currentWeather=");
		builder.append(currentWeather);
		builder.append(", lengthOfAllowedStay=");
		builder.append(lengthOfAllowedStay);
		builder.append("]");
		return builder.toString();
	}

}

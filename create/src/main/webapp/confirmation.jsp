<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Booking Confirmation</title>
	<link rel="stylesheet" href="conformation.css">
</head>
<body>
	<div class="conform">
	<h1>Booking Confirmation</h1>
	<br>
	<p>Dear ${name},</p>
	<p>We are pleased to confirm your booking for ${destination}.</p>
	<table border="1">
		<tr>
			<th>Booking Details</th>
			<th>Value</th>
		</tr>
		<tr>
			<th>Name</th>
			<td>${name}</td>
		</tr>
		<tr>
			<th>From</th>
			<td>${from}</td>
		</tr>
		<tr>
			<th>Destination</th>
			<td>${destination}</td>
		</tr>
		<tr>
			<th>Distance</th>
			<td>${distance} km</td>
		</tr>
		<tr>
			<th>Days</th>
			<td>${days} days</td>
		</tr>
		<tr>
			<th>Package Type</th>
			<td>${packageType}</td>
		</tr>
		<tr>
			<th>Passengers</th>
			<td>${passengers}</td>
		</tr>
		<tr>
			<th>Departure Date</th>
			<td>${departureDate}</td>
		</tr>
		<tr>
			<th>Return Date</th>
			<td>${returnDate}</td>
		</tr>
		<tr>
			<th>Total Cost</th>
			<td>${totalAmount}</td>
		</tr>
		<tr>
			<th>Discount</th>
			<td>${discount}</td>
		</tr>
		<tr>
			<th>Promocode</th>
			<td>TRIPTREK2024</td>
		</tr>
		<tr>
			<th>Payment Status</th>
			<td>${paymentStatus}</td>
		</tr>
		<tr>
			<th>Payment Method</th>
			<td>${paymentMethod}</td>
		</tr>
		<tr>
			<th>Booking ID</th>
			<td>${bookingId}</td>
		</tr>
	</table>
	<p>Please note that your booking ID is ${bookingId}.</p>
	<p>Note:</p>
	<ul>
	<li>Your Aadhaar number (${aadhaarNumber}) has been validated by our system for verification purposes.</li>
<li>Please carry a valid government-issued ID (Aadhaar card, driver's license, passport) during travel.</li>
<li>Hotel and driver may request verification of your identity upon arrival.</li>
</ul>
<p>Thank you for choosing our services.</p>
</div>
</body>
</html>



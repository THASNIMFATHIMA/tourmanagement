<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking System</title>
    <link rel="stylesheet" href="book.css">
</head>

<body>
   <form action="BookingServlet" method="post">
   <div class="booknow">
        <div class="heading">
            <h1>Book Your Trip!</h1>
        </div>
        <div class="input">
            <input type="text" class="box" name="name" placeholder="Your Name" required>
        </div>
        <div class="input">
            <input type="text" class="box" name="aadhaar" maxlength="12" pattern="[0-9]{12}" placeholder="Enter 12-digit Aadhaar number" required>
        </div>
        <div class="input">
            <input type="number" class="box" name="passengers" id="passengers" placeholder="Number of Passengers (Min. 2)" required>
        </div>
        <div id="passenger-list"></div> <!-- Container for passenger input fields -->
        <div class="input">
          <label class="size" for="from-location">From:</label>
          <select name="from" id="from-location" class="box" required>
            <option value="">Select Location</option>
            <!-- Tamil Nadu Districts -->
            <option value="ariyalur">Ariyalur</option>
            <option value="chennai">Chennai</option>
            <option value="coimbatore">Coimbatore</option>
            <option value="cuddalore">Cuddalore</option>
            <option value="dharmapuri">Dharmapuri</option>
            <option value="dindigul">Dindigul</option>
            <option value="erode">Erode</option>
            <option value="kallakurichi">Kallakurichi</option>
            <option value="kanchipuram">Kanchipuram</option>
            <option value="kanyakumari">Kanyakumari</option>
            <option value="karur">Karur</option>
            <option value="krishnagiri">Krishnagiri</option>
            <option value="madurai">Madurai</option>
            <option value="nagapattinam">Nagapattinam</option>
            <option value="namakkal">Namakkal</option>
            <option value="nilgiris">Nilgiris</option>
            <option value="perambalur">Perambalur</option>
            <option value="pudukkottai">Pudukkottai</option>
            <option value="ramanathapuram">Ramanathapuram</option>
            <option value="ranipet">Ranipet</option>
            <option value="salem">Salem</option>
            <option value="sivaganga">Sivaganga</option>
            <option value="tenkasi">Tenkasi</option>
            <option value="thanjavur">Thanjavur</option>
            <option value="theni">Theni</option>
            <option value="thiruvallur">Thiruvallur</option>
            <option value="thiruvannamalai">Thiruvannamalai</option>
            <option value="thiruvarur">Thiruvarur</option>
            <option value="tiruppur">Tiruppur</option>
            <option value="tiruchirappalli">Tiruchirappalli</option>
            <option value="tirunelveli">Tirunelveli</option>
            <option value="tirupattur">Tirupattur</option>
            <option value="thoothukudi">Thoothukudi</option>
            <option value="vellore">Vellore</option>
            <option value="viluppuram">Viluppuram</option>
            <option value="virudhunagar">Virudhunagar</option>
            <option value="mayiladuthurai">Mayiladuthurai</option>
            <option value="chengalpattu">Chengalpattu</option>
          </select>
          </div>
        
        <div class="input">
            <label class="size" for="destination">Destination:</label>
            <select name="destination" id="destination" class="box" required>
                <option value="goa">Goa</option>
                <option value="kerala">Kerala</option>
                <option value="kodaikanal">Kodaikanal</option>
                <option value="ooty">Ooty</option>
                <option value="yercaud">Yercaud</option>
                <option value="bangalore">Bangalore</option>
            </select>
        </div>
        <div class="input">
          <label class="size" for="distance">Distance:</label>
          <input type="text" class="box" name="distance" id="distance" readonly>
        </div>
        <div class="input">
            <label class="size" for="days">No. of Days:</label>
            <select class="box" name="days" id="days" required>
                <option value="3">3 Days</option>
                <option value="4">4 Days</option>
                <option value="5">5 Days</option>
                <option value="6">6 Days</option>
                <option value="7">7 Days</option>
                <option value="8">8 Days</option>
                <option value="9">9 Days</option>
                <option value="10">10 Days</option>
            </select>
        </div>
        <div class="input">
            <label class="size" for="packageType">Package Type:</label>
            <select class="box" name="packageType" id="packageType" required>
                <option value="standard">Standard</option>
                <option value="premium">Premium</option>
            </select>
        </div>
        <div class="input">
            <label for="departureDate">Departure Date:</label>
            <input type="date" class="box" name="departureDate" id="departureDate" required>
        </div>
        <div class="input">
            <label for="returnDate">Return Date:</label>
            <input type="date" class="box" name="returnDate" id="returnDate" readonly>
        </div>
        <div class="input">
            <label class="size" for="promocode">Promo Code (Optional):</label>
            <input type="text" class="box" name="promocode" id="promocode" onchange="calculatePackagePrice()">
        </div>
         
        <div class="input">
            <label class="size" for="hotel">Hotel:</label>
            <input type="text" class="box" name="hotel" id="hotel" readonly>
        </div>
        <div class="input">
            <label class="size" for="transportation">Transportation:</label>
            <input type="text" class="box" name="transportation" id="transportation" readonly>
        </div>
        <div class="input">
            <label class="size" for="packagePrice">Package Price:</label>
            <input type="text" class="box" name="packagePrice" id="packagePrice" readonly>
        </div>
        <div class="input">
            <label class="size" for="totalAmount">Total Amount:</label>
            <input type="text" class="box" name="totalAmount" id="totalAmount" readonly>
        </div>
        <div class="input">
            <label class="size" for="discount">Discount:</label>
            <input type="text" class="box" name="discount" id="discount" readonly>
        <div>
            <input type="hidden" name="packagePrice" value="${packagePrice}">
            <input type="hidden" name="totalAmount" value="${totalAmount}">
            <input type="hidden" name="discount" value="${discount}">
        </div>  
    		<button class="upbtn" type="submit">Pay Now</button>
		</div>



    </div>
</form>

<script>






// Package prices
const packagePrices = {
    "goa": { "standard": { "3": 18000, "4": 24000, "5": 30000, "6": 36000, "7": 42000, "8": 48000, "9": 54000, "10": 60000 }, "premium": { "3": 24000, "4": 32000, "5": 40000, "6": 48000, "7": 56000, "8": 64000, "9": 72000, "10": 80000 } },
    "kerala": { "standard": { "3": 18000, "4": 24000, "5": 30000, "6": 36000, "7": 42000, "8": 48000, "9": 54000, "10": 60000 }, "premium": { "3": 24000, "4": 32000, "5": 40000, "6": 48000, "7": 56000, "8": 64000, "9": 72000, "10": 80000 } },
    "kodaikanal": { "standard": { "3": 15000, "4": 20000, "5": 25000, "6": 30000, "7": 35000, "8": 40000, "9": 45000, "10": 50000 }, "premium": { "3": 18000, "4": 24000, "5": 30000, "6": 36000, "7": 42000, "8": 48000, "9": 54000, "10": 60000 } },
    "ooty": { "standard": { "3": 15000, "4": 20000, "5": 25000, "6": 30000, "7": 35000, "8": 40000, "9": 45000, "10": 50000 }, "premium": { "3": 18000, "4": 24000, "5": 30000, "6": 36000, "7": 42000, "8": 48000, "9": 54000, "10": 60000 } },
    "yercaud": { "standard": { "3": 15000, "4": 20000, "5": 25000, "6": 30000, "7": 35000, "8": 40000, "9": 45000, "10": 50000 }, "premium": { "3": 18000, "4": 24000, "5": 30000, "6": 36000, "7": 42000, "8": 48000, "9": 54000, "10": 60000 } },
    "bangalore": { "standard": { "3": 18000, "4": 24000, "5": 30000, "6": 36000, "7": 42000, "8": 48000, "9": 54000, "10": 60000 }, "premium": { "3": 24000, "4": 32000, "5": 40000, "6": 48000, "7": 56000, "8": 64000, "9": 72000, "10": 80000 } }
};
const tamilNaduDistricts = {
		"Ariyalur": [11.1333, 79.3833],
		"Chennai": [13.0827, 80.2707],
		"Coimbatore": [11.0014, 76.9554],
		"Cuddalore": [11.7417, 79.75],
		"Dharmapuri": [12.1275, 78.1619],
		"Dindigul": [10.3663, 77.9841],
		"Erode": [11.3333, 77.7333],
		"Kallakurichi": [11.7333, 78.9667],
		"Kanchipuram": [12.8333, 79.7],
		"Kanyakumari": [8.0788, 77.5417],
		"Karur": [10.9556, 78.0833],
		"Krishnagiri": [12.5253, 78.2333],
		"Madurai": [9.9252, 78.1192],
		"Nagapattinam": [10.7667, 79.8333],
		"Namakkal": [11.2333, 78.1667],
		"Nilgiris": [11.4067, 76.7123],
		"Perambalur": [11.2333, 78.9167],
		"Pudukkottai": [10.3833, 78.8167],
		"Ramanathapuram": [9.3683, 78.8333],
		"Ranipet": [12.7333, 79.3167],
		"Salem": [11.6643, 78.1554],
		"Sivaganga": [9.7167, 78.8167],
		"Tenkasi": [8.9733, 77.315],
		"Thanjavur": [10.7812, 79.1382],
		"Theni": [10.0111, 77.4833],
		"Thiruvallur": [13.1333, 79.9167],
		"Thiruvannamalai": [12.2333, 79.0667],
		"Thiruvarur": [10.7667, 79.6333],
		"Tiruppur": [11.1067, 77.3369],
		"Tiruchirappalli": [10.8155, 78.6962],
		"Tirunelveli": [8.7344, 77.6978],
		"Tirupattur": [12.4967, 78.5667],
		"Thoothukudi": [8.8077, 78.1432],
		"Vellore": [12.9183, 79.1325],
		"Viluppuram": [11.9333, 79.5],
		"Virudhunagar": [9.2942, 77.9554],
		"Mayiladuthurai": [11.1, 79.65],
		"Chengalpattu": [12.6833, 79.9833]
	  };
const destinations = {
		  "goa": [15.4909, 73.8278],
		  "kerala": [10.8505, 76.2711],
		  "kodaikanal": [10.2383, 77.4924],
		  "ooty": [11.4067, 76.7123],
		  "yercaud": [11.7793, 78.2094],
		  "bangalore": [12.9716, 77.5946]
	  };
const hotels = {
		  "goa": {
			  "standard": "Lemon Tree Amarante",
			  "premium": "The Park Hyatt"
		  },
		  "kerala": {
			  "standard": "Munnar Inn",
			  "premium": "The Leela Kempinski"
		  },
		  "kodaikanal": {
			  "standard": "The Sagar Resort",
			  "premium": "The Carlton"
		  },
		  "ooty": {
			  "standard": "Hotel Darshan",
			  "premium": "The Savoy Hotel"
		  },
		  "yercaud": {
			  "standard": "The Lake Forest Hotel",
			  "premium": "The GRT Nature Trails"
		  },
		  "bangalore": {
			  "standard": "Hotel Citrus",
			  "premium": "The Ritz-Carlton"
		  },
	  };
//Function to calculate hotel
// Function to calculate hotel
function calculateHotel() {
    var destination = document.getElementById("destination").value;
    var packageType = document.getElementById("packageType").value;

    // Check if destination and packageType are valid
    if (!destination || !packageType || !hotels[destination] || !hotels[destination][packageType]) {
        document.getElementById("hotel").value = ""; // Clear hotel field
        return;
    }

    var hotel = hotels[destination][packageType];
    document.getElementById("hotel").value = hotel;
}

// Trigger calculateHotel on change
document.getElementById("destination").addEventListener("change", calculateHotel);
document.getElementById("packageType").addEventListener("change", calculateHotel);
document.addEventListener("DOMContentLoaded", calculateHotel);






document.getElementById("passengers").addEventListener("input", function() {
    let passengerCount = parseInt(this.value);
    if (passengerCount < 2) {
        alert("Minimum 2 passengers required");
        this.value = 2;
        passengerCount = 2;
    }
    const passengerList = document.getElementById("passenger-list");
    passengerList.innerHTML = '';
    for (let i = 1; i <= passengerCount; i++) {
        const newPassenger = document.createElement("div");
        newPassenger.className = "passenger";
        newPassenger.innerHTML = `
            <h3>Passenger ${i}</h3>
            <label for="passenger-name-${i}">Name:</label>
            <input type="text" id="passenger-name-${i}" name="passenger-name[]" placeholder="Passenger ${i} Name" required>
            <label for="passenger-age-${i}">Age:</label>
            <input type="number" id="passenger-age-${i}" name="passenger-age[]" placeholder="Passenger ${i} Age" required>
        `;
        passengerList.appendChild(newPassenger);
    }
});


// Calculate return date and package price
document.getElementById("days").addEventListener("change", function() {
    calculateReturnDate();
    calculatePackagePrice();
});

document.getElementById("packageType").addEventListener("change", calculatePackagePrice);
document.getElementById("destination").addEventListener("change", calculatePackagePrice);
document.getElementById("passengers").addEventListener("input", calculatePackagePrice);
document.getElementById("departureDate").addEventListener("change", calculateReturnDate);
document.getElementById("promocode").addEventListener("input", calculatePackagePrice);

// Function to calculate return date
function calculateReturnDate() {
    var days = parseInt(document.getElementById("days").value);
    var departureDate = document.getElementById("departureDate").value;

    if (!departureDate) {
        alert("Please select departure date");
        return;
    }

    var departureDateObj = new Date(departureDate);
    var returnDateObj = new Date(departureDateObj.getTime() + (days * 24 * 60 * 60 * 1000));
    var returnDate = returnDateObj.toISOString().split('T')[0];

    document.getElementById("returnDate").value = returnDate;
}

// Function to calculate package price
function calculatePackagePrice() {
    var destination = document.getElementById("destination").value;
    var packageType = document.getElementById("packageType").value;
    var days = parseInt(document.getElementById("days").value);
    var passengers = parseInt(document.getElementById("passengers").value);
    var promocode = document.getElementById("promocode").value.toUpperCase();

    // Check minimum passengers
    if (passengers < 2) {
        alert("Minimum 2 passengers required");
        document.getElementById("passengers").value = 2;
        passengers = 2;
    }

    // Check if destination, packageType and days are valid
    if (!packagePrices[destination] || !packagePrices[destination][packageType] || !packagePrices[destination][packageType][days]) {
        alert("Invalid package details");
        return;
    }

    var packagePrice = packagePrices[destination][packageType][days];

    // Calculate transportation
    var transportation;
    if (passengers <= 7) {
        transportation = "Car";
    } else if (passengers >= 8 && passengers <= 18) {
        transportation = "Van";
    } else {
        transportation = "Bus";
    }

    var totalAmount = packagePrice * passengers;
    var passengerDiscount = 0;
    var promoDiscount = 0;
    var discountMessage = "";

    // Apply passenger discount
    if (transportation === "Car" && passengers >= 5) {
        passengerDiscount = totalAmount * 0.05;
        discountMessage += "5% discount applied for 5+ passengers in Car\n";
    } else if (transportation === "Van" && passengers >= 12) {
        passengerDiscount = totalAmount * 0.05;
        discountMessage += "5% discount applied for 12+ passengers in Van\n";
    } else if (transportation === "Bus" && passengers >= 25) {
        passengerDiscount = totalAmount * 0.05;
        discountMessage += "5% discount applied for 25+ passengers in Bus\n";
    }

    // Apply promo code discount
    if (promocode === "TRIPTREK2024") {
        promoDiscount = totalAmount * 0.05;
        discountMessage += "5% discount applied for promo code";
    } else {
        discountMessage = "No discount applied";
    }

    var totalDiscount = passengerDiscount + promoDiscount;
    totalAmount -= totalDiscount;

    document.getElementById("transportation").value = transportation;
    document.getElementById("packagePrice").value = "₹ " + packagePrice;
    document.getElementById("totalAmount").value = "₹ " + totalAmount.toFixed(2);
    document.getElementById("discount").value = "₹ " + totalDiscount.toFixed(2);
}
function calculateDistance(lat1, lon1, lat2, lon2) {
	  const R = 6371; // km
	  const dLat = (lat2 - lat1) * Math.PI / 180;
	  const dLon = (lon2 - lon1) * Math.PI / 180;
	  const lat1Rad = lat1 * Math.PI / 180;
	  const lat2Rad = lat2 * Math.PI / 180;

	  const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
		  Math.cos(lat1Rad) * Math.cos(lat2Rad) *
		  Math.sin(dLon / 2) * Math.sin(dLon / 2);
	  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
	  return R * c;
}


document.getElementById("from-location").addEventListener("input", function() {
if (this.value.trim() !== "") {
calculateDistanceFromSource();
}
});

document.getElementById("destination").addEventListener("change", calculateDistanceFromSource);



function calculateDistanceFromSource() {
    const sourceLocation = document.getElementById("from-location").value.toLowerCase().trim();
    const destination = document.getElementById("destination").value;

    if (sourceLocation === "" || destination === "") {
        document.getElementById("distance").value = "";
        return;
    }

    let sourceLat, sourceLon;
    for (const district in tamilNaduDistricts) {
        if (district.toLowerCase() === sourceLocation) {
            sourceLat = tamilNaduDistricts[district][0];
            sourceLon = tamilNaduDistricts[district][1];
            break;
        }
    }

    if (!sourceLat || !sourceLon) {
        alert("Please enter a valid source location");
        return;
    }

    const destinationLat = destinations[destination][0];
    const destinationLon = destinations[destination][1];
    const distance = calculateDistance(sourceLat, sourceLon, destinationLat, destinationLon);
    document.getElementById("distance").value = distance.toFixed(2);

    // Check if distance is less than 100km
    if (distance < 100) {
        alert(`Sorry, we cannot book a ticket because your distance (${distance.toFixed(2)} km) is less than 100km.`);
        window.location.href = "home.html"; // Redirect to home page

    }
}

let timeoutId;
document.getElementById("from-location").addEventListener("input", function() {
    clearTimeout(timeoutId);
    if (this.value.trim() !== "") {
        timeoutId = setTimeout(calculateDistanceFromSource, 500);
    }
});



function calculatePaymentDetails() {
        const packagePrice = document.getElementById("packagePrice").value;
        const totalAmount = document.getElementById("totalAmount").value;
        const discount = document.getElementById("discount").value;
        const name = document.getElementById("name").value;
        const aadhaar = document.getElementById("aadhaar").value;
        const passengers = document.getElementById("passengers").value;
        const from = document.getElementById("from-location").value;
        const destination = document.getElementById("destination").value;
        const days = document.getElementById("days").value;
        const packageType = document.getElementById("packageType").value;
        const departureDate = document.getElementById("departureDate").value;
        const returnDate = document.getElementById("returnDate").value;

        // Store payment details in session storage
        sessionStorage.setItem("packagePrice", packagePrice);
        sessionStorage.setItem("totalAmount", totalAmount);
        sessionStorage.setItem("discount", discount);
        sessionStorage.setItem("name", name);
        sessionStorage.setItem("aadhaar", aadhaar);
        sessionStorage.setItem("passengers", passengers);
        sessionStorage.setItem("from", from);
        sessionStorage.setItem("destination", destination);
        sessionStorage.setItem("days", days);
        sessionStorage.setItem("packageType", packageType);
        sessionStorage.setItem("departureDate", departureDate);
        sessionStorage.setItem("returnDate", returnDate);
    }

</script>
</body>
</html>
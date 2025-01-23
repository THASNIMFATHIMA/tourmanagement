<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="home.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="C:\Users\thasf\OneDrive\Desktop\New folder\home.html"><span class="text-warning">Trip</span>Trek</a>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
  				<ul class="navbar-nav ms-auto">
    				<li class="nav-item dropdown">
      					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        						<%= session.getAttribute("username") %>
      					</a>
      					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
        					<li><a class="dropdown-item" href="#profile">Profile</a></li>
        					<li><a class="dropdown-item" href="update.jsp">Edit Profile</a></li>
        					<li><a class="dropdown-item" href="#bookings">Bookings</a></li>
       						<li><hr class="dropdown-divider"></li>
        					<li><a class="dropdown-item" href="logn.jsp">Logout</a></li>
      					</ul>
    				</li>
  				</ul>
			</nav>
            
        </div>
    </nav>


    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
            </div>
            <div class="carousel-inner">
            <div class="carousel-item active">
            <img src="galleryimg-1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption">
                <h5>Explore the World Your Way</h5>
                <p>Discover new destinations and experiences that fit your travel style.</p>
                
            </div>
            </div>
            <div class="carousel-item">
                <img src="galleryimg-2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                <h5>Adventures Await</h5>
                <p>Find thrilling adventures and memorable trips with our personalized itineraries.</p>
               
            </div>
            </div>
            <div class="carousel-item">
                <img src="galleryimg-3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                <h5>Unforgettable Journeys</h5>
                <p>From hidden gems to popular spots, embark on a journey tailored just for you.</p>
                
            </div>
            </div>
            <div class="carousel-item">
                <img src="galleryimg-4.jpeg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                <h5>Tailored for You</h5>
                <p>Customize your trips with curated experiences that match your interests and pace.</p>
                
            </div>
            </div>
            <div class="carousel-item">
                <img src="galleryimg-6.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                <h5>Stress-Free Travel</h5>
                <p>Let us handle the details while you focus on making memories that last a lifetime.</p>
                
            </div>
            </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>


        <!--destination-->

    
        <section id="destination" class="destination-places">
        </section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-header text-center pb-3 mt-md-5">
                        <h2>Destination</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.<br> Aspernatur distinctio repellendus</p>
                    </div>
                </div>
            </div>
            <div class="des-container">
                <div class="ol-12 col-md-12 col-lg-4 pb-2">
                    <div class="card overflow">
                        <img src="bangaloreimg.jpg" class="select">
                        <div class="intro">
                            <h1 class="placename">Bangalore</h1>
                            <p class="aboutplace">Bangalore, Karnataka's capital, is India's Silicon Valley.Cosmopolitan Bangalore blends rich cultural heritage with modern vibes.Home to IT hubs, startups, and prestigious institutions (IISc, IIMB).<br><a href="bangalore.jsp">Learn More</a>.</p>
                        </div>
                    </div>
                </div>
                <div class="ol-12 col-md-12 col-lg-4 pb-2">
                    <div class="card overflow">
                        <img src="goa.jpg" class="select">
                        <div class="intro">
                            <h1 class="placename">Goa</h1>
                            <p class="aboutplace">Goa is famous for its stunning beaches, vibrant nightlife, Portuguese-influenced architecture, and rich cultural heritage, making it a popular destination for both relaxation and adventures<br><a href="Goa.jsp">Learn More</a>.</p>
                        </div>
                    </div>
                </div>
                <div class="ol-12 col-md-12 col-lg-4 pb-2">
                    <div class="card overflow">
                        <img src="kerala.jpg" class="select">
                        <div class="intro">
                            <h1 class="placename">kerala</h1>
                            <p class="aboutplace">Kerala is known for its picturesque backwaters, lush green landscapes, Ayurvedic treatments, and unique cultural traditions like Kathakali dance, along with its famed spice plantations and serene beaches.s<br><a href="kerala.jsp">Learn More</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="des-container">
                <div class="ol-12 col-md-12 col-lg-4 pb-2">
                    <div class="card overflow">
                        <img src="ootyimg.jpg" class="select">
                        <div class="intro">
                            <h1 class="placename">Ooty</h1>
                            <p class="aboutplace">Ooty, Tamil Nadu's scenic hill station, boasts pleasant weather, lush tea gardens, Ooty Lake, Botanical Gardens, and Doddabetta Peak, making it a tranquil getaway amidst nature's beauty.<br><a href="ooty.jsp">Learn More</a>.</p>
                        </div>
                    </div>
                </div>
                <div class="ol-12 col-md-12 col-lg-4 pb-2">
                    <div class="card overflow">
                        <img src="yercaudimg.jpg" class="select">
                        <div class="intro">
                            <h1 class="placename">Yercaud</h1>
                            <p class="aboutplace">Yercaud, a hidden gem, offers stunning vistas, tranquil lakes, and refreshing climate, making it an ideal weekend getaway from Bangalore and Chennai for nature lovers and trekkers.
                            <br><a href="yerkaud.jsp">Learn More</a>.</p>
                        </div>
                    </div>
                </div>
                <div class="ol-12 col-md-12 col-lg-4 pb-2">
                    <div class="card overflow">
                        <img src="kodaikanalimg.jpg" class="select">
                        <div class="intro">
                            <h1 class="placename">Kodaikanal</h1>
                            <p class="aboutplace"> Kodaikanal, a charming hill station, offers breathtaking scenery, tranquil lakes, and refreshing climate, making it an ideal getaway for nature lovers, trekkers, and those seeking serenity.
                            <br><a href="kodaikanal.jsp">Learn More</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

        <!--Packages-->

        <section id="packages" class="packages-places">
        </section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-header text-center pb-3 mt-md-5">
                        <h1>Packages</h1>
                        <p><b>Important Notes:</b></p>
                        <ul class="tripListWrapper">
                          <li><b>1.</b> Minimum 2 passengers required</li>
                          <li><b>2.</b> For 2-6 passengers, a car will be allocated</li>
                          <li><b>3.</b> For 6-10 passengers, a van will be allocated</li>
                          <li><b>4.</b> For more than 10 passengers, a bus will be allocated (sharing)</li>
                        </ul>
                    </div>
                      
                </div>
            </div>
			
            
            
              					
	
              
            <div class="packagesdetails">
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="kerala1.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Kerala</h1>
                            <ul>
                                <li>4 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹12,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
           
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="goa1.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Goa</h1>
                            <ul>
                                <li>4 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹12,000 for 3 days / person</p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>

                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="bangalore1.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Bangalore</h1>
                            <ul>
                                <li>4 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹9,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
        
            
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="yercaud1.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Yercaud</h1>
                            <ul>
                                <li>4 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹9,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="packagesdetails">
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="kodaikanal1.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Kodaikanal</h1>
                            <ul>
                                <li>4 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹9,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>

                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="ooty1.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Ooty</h1>
                            <ul>
                                <li>4 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹9,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
           
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="kerala2.png" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Kerala</h1>
                            <ul>
                                <li>5 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹15,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
        
            
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="goa2.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Goa</h1>
                            <ul>
                                <li>5 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹15,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="packagesdetails">
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="bangalore2.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Bangalore</h1>
                            <ul>
                                <li>5 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹12,000 + Guide for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
        
            
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="yercaud2.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Yercaud</h1>
                            <ul>
                                <li>5 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹12,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="kodaikanal2.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Kodaikanal</h1>
                            <ul>
                                <li>5 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹12,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>

                <div class="ol-12 col-md-12 col-lg-3 pb-2">
                    <div class="card align">
                        <img src="ooty2.jpg" class="imgpac">
                        <div class="standard">
                            <h1 class="placename">Ooty</h1>
                            <ul>
                                <li>5 star hotel</li>
                                <li>Selected breakfast</li>
                                <li>Roundtrip Vehicle</li>
                                <li>Sight seeing</li>
                                <li>Guide</li>
                                <li>Activity</li>
                            </ul>
                            <p  class="pck">₹12,000 for 3 days / person </p>
                           
                            <p class="pck"><a href="book.jsp">Book Now</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <p class="text-center"><b>Additional Notes:</b></p>
            <p class="additional-notes">Please contact us for custom package requirements. 
              Prices may vary based on seasonal demand.</p>
     </div>
  
        

        <!--services-->
        <section id="services" class="service-section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-header text-center pb-3 mt-md-5">
                            <h2>Our Services</h2>
                            <p>Expertly Curated Travel Experiences: Bookings, Itineraries, Transportation, Accommodations,<br> and Activities for Unforgettable Journeys and Memories</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-white text-center bg-dark pb-2">
                            <div class="card-body">
                                <i class="bi bi-airplane-engines-fill"></i>
                                <h3 class="card-title"> Customized Itineraries</h3>
                                <p class="lead"> Offer personalized travel itineraries tailored to the customer's preferences and interests.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-white text-center bg-dark pb-2">
                            <div class="card-body">
                                <i class="bi bi-building-fill font"></i>
                                <h3 class="card-title">Local Experiences</h3>
                                <p class="lead">Provide options for travelers to experience local culture, traditions, and events in their destination.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-white text-center bg-dark pb-2">
                            <div class="card-body">
                                <i class="bi bi-cup-hot-fill"></i>
                                <h3 class="card-title">24/7 Customer Support </h3>
                                <p class="lead">Ensure customers have access to help or support throughout their trip.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-white text-center bg-dark pb-2">
                            <div class="card-body">
                                <i class="bi bi-bicycle"></i>
                                <h3 class="card-title"> Adventure Activities </h3>
                                <p class="lead"> Include adventurous activities like hiking, water sports, or safari experiences for thrill-seekers.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-white text-center bg-dark pb-2">
                            <div class="card-body">
                                <i class="bi bi-globe"></i>
                                <h3 class="card-title">Transportation Arrangements</h3>
                                <p class="lead">Help with booking cars, airport transfers, or even public transportation tickets. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-white text-center bg-dark pb-2">
                            <div class="card-body">
                                <i class="bi bi-globe"></i>
                                <h3 class="card-title">Group Travel Discounts </h3>
                                <p class="lead">Special deals or discounts for group bookings to encourage family or friends traveling together.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!--gallery-->

        <section id="gallery" class="gallery-section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-header text-center pb-3">
                            <h2>Gallery</h2>
                            <p>Explore Destinations: Capturing Moments from Around the World</p>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top: 20px;">
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 2.jpg" class="imggal" height="200px" width="300px">
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des-1.jpg" class="imggal" height="200px" >
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 3.jpg" class="imggal" height="200px" >
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 4.jpg" class="imggal" height="200px">
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 5.jpg" class="imggal" height="200px" >
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 6.jpg" class="imggal" height="200px">
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 7.jpg" class="imggal" height="200px">
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 8.jpg" class="imggal" height="200px" >
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 9.jpg" class="imggal" height="200px">
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 10 (3).jpg" class="imggal" height="200px">
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 10 (2).jpg" class="imggal" height="200px" >
                        </div>
                    </div>
                    <div class="ol-12 col-md-6 col-lg-3 pb-2">
                        <div class="cart">
                            <img src="des 10 (1).jpg" class="imggal" height="200px">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--about-->


        <section id="about" class="about-section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-12 mt-md-5">
                        <div class="about-img">
                            <img src="galleryimg-5.jpg" alt="about" class="img-fluid" >
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-12 col-12 ps-lg-5 mt-md-5">
                        <div class="about-text">
                            <h2>Welcome to TripTrek</h2>
                            <p>Your one-stop solution for managing and booking tours. Our innovative platform streamlines the tour management process, making it easier for tour operators to manage bookings, itineraries, and customer communications. With features like automated invoicing, payment tracking, and real-time reporting, our system helps tour operators save time, reduce costs, and deliver exceptional customer experiences. Whether you're a small tour operator or a large travel agency, our system is designed to help you succeed.</p>
                            <a href="#" class="btn btn-warning">learn more</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        
        <!--footer-->

        <footer class="bg-dark p-2 text-center foot">
            <div class="container">
                <h1 class="text-white"><span>Trip</span>Terk</h1>
                <p class="text-white">Your Adventure, Our Expertise – Bringing your dream travels to life with ease and care.</p>
                <p class="text-white">
                    <i class="bi bi-facebook"></i>
                    <i class="bi bi-github"></i>
                    <i class="bi bi-youtube"></i>
                    <i class="bi bi-twitter"></i>
                    <i class="bi bi-instagram"></i>
                </p>
            </div>
        </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    
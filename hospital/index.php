
<?php
include_once('hms/include/config.php');
if(isset($_POST['submit']))
{
$name=$_POST['fullname'];
$email=$_POST['emailid'];
$mobileno=$_POST['mobileno'];
$dscrption=$_POST['description'];
$query=mysqli_query($con,"insert into tblcontactus(fullname,email,contactno,message) value('$name','$email','$mobileno','$dscrption')");
echo "<script>alert('Your information succesfully submitted');</script>";
echo "<script>window.location.href ='index.php'</script>";

} ?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Hospital management System </title>

    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
     <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>

    <body>

    <!-- ################# Header Starts Here#######################--->
    
      <header id="menu-jk">
    
        <div id="nav-head" class="header-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-3  col-sm-12" style="color:#000;font-weight:bold; font-size:42px; margin-top: 1% !important;">HMS
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>
                    <div id="menu" class="col-lg-8 col-md-9 d-none d-md-block nav-item">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#services">Services</a></li>
                            <li><a href="#about_us">About Us</a></li>
                            <li><a href="#gallery">Gallery</a></li>
                            <li><a href="#contact_us">Contact Us</a></li>
                            <li><a href="#logins">Logins</a></li>  
                        </ul>
                    </div>
                    <div class="col-sm-2 d-none d-lg-block appoint">
                        <a class="btn btn-success" href="hms/user-login.php">Book an Appointment</a>
                    </div>
                </div>

            </div>
        </div>
    </header>
    
     <!-- ################# Slider Starts Here#######################--->

    <div class="slider-detail">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>


   


            <div class="carousel-inner">
                <div class="carousel-item ">
                    <img class="d-block w-100" src="assets/images/slider/slider_2.jpg" alt="Second slide">
                    <div class="carousel-cover"></div>
                                        <div class="carousel-caption vdg-cur d-none d-md-block" style="position:absolute; left:5%; top:50%; transform:translateY(-40%); width:50%; display:flex; flex-direction:column; align-items:flex-start; text-align:left;">
                                            <h5 class="animated bounceInDown" style="margin-bottom:18px; margin-top:0; text-align:left;">Hospital Management System</h5>
                                            <div style="font-size:16px; margin-bottom:0; color:#fff; text-shadow: 1px 1px 4px #000; text-align:left;">
                                                    A smart and secure platform to manage hospital operations efficiently.<br>
                                                    It simplifies patient records, appointments, billing, pharmacy, and lab reports in one system.<br>
                                                    Designed to improve healthcare services with accuracy and speed.<br>
                                                    Making hospital management easier, faster, and more reliable.
                                                </div>
                                        </div>
                </div>
                
                <div class="carousel-item active">
                    <img class="d-block w-100" src="assets/images/slider/slider_3.jpg" alt="Third slide">
                      <div class="carousel-cover"></div>
                                        <div class="carousel-caption vdg-cur d-none d-md-block" style="position:absolute; left:5%; top:50%; transform:translateY(-40%); width:50%; display:flex; flex-direction:column; align-items:flex-start; text-align:left;">
                                            <h5 class="animated bounceInDown" style="margin-bottom:18px; margin-top:0; text-align:left;">Hospital Management System</h5>
                                            <div style="font-size:16px; margin-bottom:0; color:#fff; text-shadow: 1px 1px 4px #000; text-align:left;">
                                                    A smart and secure platform to manage hospital operations efficiently.<br>
                                                    It simplifies patient records, appointments, billing, pharmacy, and lab reports in one system.<br>
                                                    Designed to improve healthcare services with accuracy and speed.<br>
                                                    Making hospital management easier, faster, and more reliable.
                                                </div>
                                        </div>
              
                </div>
                
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    </div>
    
  <!--  ************************* Logins ************************** -->
    
    
     <section id="logins" class="our-blog container-fluid">
        <div class="container">
        <div class="inner-title">

                <h2>Logins</h2>
            </div>
            <div class="col-sm-12 blog-cont">
                <div class="row no-margin">
                    <div class="col-lg-3 col-md-6 col-sm-6 blog-smk">
                        <div class="blog-single">

                                <img src="assets/images/patient.jpg" alt="">

                            <div class="blog-single-det">
                                <h6>Patient Login</h6>
                                <a href="hms/user-login.php" target="_blank">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 blog-smk">
                        <div class="blog-single">

                                <img src="assets/images/doctor.jpg" alt="">

                            <div class="blog-single-det">
                                <h6>Doctors login</h6>
                                <a href="hms/doctor" target="_blank">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 blog-smk">
                        <div class="blog-single">

                                <img src="assets/images/admin.jpg" alt="">

                            <div class="blog-single-det">
                                <h6>Admin Login</h6>
                    
                                <a href="hms/admin" target="_blank">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 blog-smk">
                        <div class="blog-single">

                                <img src="assets/images/insurance.jpg" alt="">

                            <div class="blog-single-det">
                                <h6>Health Insurance Checker</h6>
                    
                                <a href="hms/insurance" target="_blank">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    

                    
                    
                </div>
            </div>
            
        </div>
    </section>  







    <!-- ################# Our Departments Starts Here#######################--->


    <section id="services" class="key-features department">
        <div class="container">
            <div class="inner-title">

                <h2>Our Key Features</h2>
                <p>Take a look at some of our key features</p>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-heartbeat"></i>
                        <h5>Cardiology</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-ribbon"></i>
                        <h5>Orthopaedic</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                       <i class="fab fa-monero"></i>
                        <h5>Neurologist</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-capsules"></i>
                        <h5>Pharma Pipeline</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-prescription-bottle-alt"></i>
                        <h5>Pharma Team</h5>
                    </div>
                </div>



                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="far fa-thumbs-up"></i>
                        <h5>High Quality treatments</h5>

                    </div>
                </div>
            </div>






        </div>

    </section>
    
    
  
    
    <!--  ************************* About Us Starts Here ************************** -->
        
    <section id="about_us" class="about-us">
        <div class="row no-margin">
            <div class="col-sm-6 image-bg no-padding">
                
            </div>
            <div class="col-sm-6 abut-yoiu">
                <h3>About Our Hospital</h3>
<?php
$ret=mysqli_query($con,"select * from tblpage where PageType='aboutus' ");
while ($row=mysqli_fetch_array($ret)) {
?>

    <p><?php  echo $row['PageDescription'];?>.</p><?php } ?>
            </div>
        </div>
    </section>    
    
    
            <!--  ************************* Gallery Starts Here ************************** -->
        <div id="gallery" class="gallery">    
           <div class="container">
              <div class="inner-title">

                <h2>Our Gallery</h2>
                <p>View Our Gallery</p>
            </div>
              <div class="row">
                

        <div class="gallery-filter d-none d-sm-block">
            <button class="btn btn-default filter-button" data-filter="all">All</button>
            <button class="btn btn-default filter-button" data-filter="hdpe">Dental</button>
            <button class="btn btn-default filter-button" data-filter="sprinkle">Cardiology</button>
            <button class="btn btn-default filter-button" data-filter="spray"> Neurology</button>
            <button class="btn btn-default filter-button" data-filter="irrigation">Laboratry</button>
        </div>
        <br/>



            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
                <img src="assets/images/gallery/gallery_01.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter sprinkle">
                <img src="assets/images/gallery/gallery_02.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
                <img src="assets/images/gallery/gallery_03.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
                <img src="assets/images/gallery/gallery_04.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
                <img src="assets/images/gallery/gallery_05.jpg" class="img-responsive">
            </div>

          

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
                <img src="assets/images/gallery/gallery_06.jpg" class="img-responsive">
            </div>

        </div>
    </div>
       
       
       </div>
        <!-- ######## Gallery End ####### -->
    
    
     <!--  ************************* Contact Us Starts Here ************************** -->
    
    <section id="contact_us" class="contact-us-single">
        <div class="row no-margin">

            <div  class="col-sm-12 cop-ck">
                <form method="post">
                <h2 >Contact Form</h2>
                    <div class="row cf-ro">
                        <div  class="col-sm-3"><label>Enter Name :</label></div>
                        <div class="col-sm-8"><input type="text" placeholder="Enter Name" name="fullname" class="form-control input-sm" required ></div>
                    </div>
                    <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Email Address :</label></div>
                        <div class="col-sm-8"><input type="text" name="emailid" placeholder="Enter Email Address" class="form-control input-sm"  required></div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Mobile Number:</label></div>
                        <div class="col-sm-8"><input type="text" name="mobileno" placeholder="Enter Mobile Number" class="form-control input-sm" required ></div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Enter  Message:</label></div>
                        <div class="col-sm-8">
                          <textarea rows="5" placeholder="Enter Your Message" class="form-control input-sm" name="description" required></textarea>
                        </div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label></label></div>
                        <div class="col-sm-8">
                         <button class="btn btn-success btn-sm" type="submit" name="submit">Send Message</button>
                        </div>
                </div>
            </form>
            </div>
     
        </div>
    </section>
    
    
    
    
    
    <!-- ################# Footer Starts Here#######################--->
    
        <!-- Floating AI Assistant -->
        <div id="ai-assistant-button" style="position:fixed;right:20px;bottom:20px;z-index:9999;">
            <button id="openAssistant" class="btn btn-primary" style="border-radius:50%;width:64px;height:64px;box-shadow:0 4px 12px rgba(0,0,0,0.2);font-size:24px;display:flex;align-items:center;justify-content:center;">
                <i class="fas fa-robot" aria-hidden="true" style="font-size:26px;color:#fff;"></i>
            </button>
        </div>

        <div id="aiAssistantModal" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">AI Symptom Assistant</h5>
                        <button type="button" class="close" id="closeAssistant" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Describe your symptoms (type or use microphone):</p>
                        <div class="input-group mb-2">
                            <input id="symptomsInput" type="text" class="form-control" placeholder="e.g. chest pain and shortness of breath">
                            <div class="input-group-append">
                                <button id="micBtn" class="btn btn-outline-secondary" title="Speak">🎤</button>
                                <button id="askBtn" class="btn btn-success">Ask</button>
                            </div>
                        </div>
                        <div id="assistantResult">Speak or submit symptoms to get recommended doctors.</div>
                    </div>
                </div>
            </div>
        </div>

        <script>
        (function(){
            var open = document.getElementById('openAssistant');
            var modal = document.getElementById('aiAssistantModal');
            var close = document.getElementById('closeAssistant');
            var mic = document.getElementById('micBtn');
            var ask = document.getElementById('askBtn');
            var input = document.getElementById('symptomsInput');
            var result = document.getElementById('assistantResult');
            function showModal(){ modal.style.display='block'; modal.classList.add('show'); }
            function hideModal(){ modal.style.display='none'; modal.classList.remove('show'); }
            open.addEventListener('click', showModal);
            close.addEventListener('click', hideModal);
            window.addEventListener('click', function(e){ if(e.target==modal) hideModal(); });

            // Speech recognition
            var recognition;
            if(window.SpeechRecognition || window.webkitSpeechRecognition){
                var Rec = window.SpeechRecognition || window.webkitSpeechRecognition;
                recognition = new Rec();
                recognition.lang = 'en-US';
                recognition.interimResults = false;
                recognition.maxAlternatives = 1;
                recognition.onresult = function(e){
                    var t = e.results[0][0].transcript;
                    input.value = t;
                };
                recognition.onerror = function(e){ console.error('Speech error', e); };
            } else {
                mic.disabled = true;
                mic.title = 'Speech not supported in this browser';
            }

            mic.addEventListener('click', function(){
                if(!recognition) return;
                try{ recognition.start(); }catch(e){ console.warn(e); }
            });

            ask.addEventListener('click', function(){
                var text = input.value.trim();
                if(!text){ result.innerText = 'Please enter or say symptoms.'; return; }
                result.innerText = 'Searching for recommended doctors...';
                fetch('hms/ai-assistant.php', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                    body: 'symptoms=' + encodeURIComponent(text)
                }).then(function(r){ return r.json(); }).then(function(data){
                    if(!data || !data.success){ result.innerText = data && data.message ? data.message : 'No results.'; return; }
                    var html = '<p><strong>Recommended specialty:</strong> ' + (data.specialization||'Unknown') + '</p>';
                    if(data.doctors && data.doctors.length){
                        html += '<ul>';
                        data.doctors.forEach(function(d){ html += '<li>' + (d.doctorName||'') + (d.docFees?(' — Fee: '+d.docFees):'') + (d.contactno?(' — '+d.contactno):'') + '</li>'; });
                        html += '</ul>';
                        html += '<p><a href="hms/user-login.php" class="btn btn-sm btn-success">Book Appointment</a></p>';
                    } else {
                        html += '<p>No doctors found for this specialty.</p>';
                    }
                    result.innerHTML = html;
                }).catch(function(err){ console.error(err); result.innerText = 'Error fetching recommendations.'; });
            });
        })();
        </script>

        <!-- ################# Footer Starts Here#######################--->


    <footer class="footer">
        <div class="container">
            <div class="row">
       
                <div class="col-md-6 col-sm-12">
                    <h2>Useful Links</h2>
                    <ul class="list-unstyled link-list">
                        <li><a ui-sref="about" href="#about">About us</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="portfolio" href="#services">Services</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="products" href="#logins">Logins</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="gallery" href="#gallery">Gallery</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="contact" href="#contact">Contact us</a><i class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-12 map-img">
                    <h2>Contact Us</h2>
                    <address class="md-margin-bottom-40">

<?php
$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
while ($row=mysqli_fetch_array($ret)) {
?>


                        <?php  echo $row['PageDescription'];?> <br>
                        Phone: <?php  echo $row['MobileNumber'];?> <br>
                        Email: <a href="mailto:<?php  echo $row['Email'];?>" class=""><?php  echo $row['Email'];?></a><br>
                        Timing: <?php  echo $row['OpenningTime'];?>
                    </address>

        <?php } ?>





                </div>
            </div>
        </div>
        

    </footer>
    <div class="copy">
            <div class="container">
         Hospital Management System
                
     
            </div>

        </div>
    
    </body>

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>
<script src="assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>

<script src="assets/js/script.js"></script>



</html>
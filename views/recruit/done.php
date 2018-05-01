<section class="u-bg-overlay g-bg-pos-top-center g-bg-img-hero g-bg-black-opacity-0_3--after g-py-100" style="background:#ccc;padding-top:10px !important; padding-bottom:10px !important">
<div class="container u-bg-overlay__inner" style="background:#fff;padding:30px 0;border-top:4px solid #90b205">

		<div class="stepwizard" style="margin-bottom:20px">
    <div class="stepwizard-row">
    	
        <div class="stepwizard-step">
        	<a href="#" style="color:inherit;">
            <button type="button" class="btn btn-default btn-circle">1</button>
            <p>Registration</p>
            </a>
        </div>
    	
        <div class="stepwizard-step">
        	<a href="#" style="color:inherit;">
            <button type="button" class="btn btn-default btn-circle">2</button>
            <p>Qualifications</p>
        	</a>
        </div>
        <div class="stepwizard-step">
        	<a href="#" style="color:inherit;">
            <button type="button" class="btn btn-default btn-circle" disabled="disabled">3</button>
            <p>Work Experience</p>
        	</a>
        </div> 
        <div class="stepwizard-step">
        	<a href="#" style="color:inherit;">
            <button type="button" class="btn btn-default btn-circle" disabled="disabled">4</button>
            <p>Attachments</p>
        	</a>
        </div> 
        <div class="stepwizard-step">
            <button type="button" class="btn btn-primary btn-circle" disabled="disabled">5</button>
            <p>Finish</p>
        	
        </div> 
    </div>
</div>

  

   <header class="text-center g-width-60x--md mx-auto g-mb-30">
    <div class="u-heading-v2-3--bottom g-brd-primary g-mb-20">
      <h2 class="h3 u-heading-v2__title g-color-gray-dark-v2 g-font-weight-600" style="margin-top:20px">Hello <?php echo $_SESSION['user_details']['fname'].' '.$_SESSION['user_details']['sname'];?></h2>
      
    </div>
  </header>


  <div class="alert alert-success" style="text-align:center">
  	<p style="padding:0px 0 40px 0px;text-align:center">
  		
  		<h2 class="h3 u-heading-v2__title g-color-gray-dark-v2 g-font-weight-600" style="text-align:center">
<i class="fa fa-check fa-2x" style="color:#96E252"></i><br/>
  		You have completed your application process.</h2>
      <h2>Your Reference ID Is <?PHP  echo $_SESSION['user_details']['reference'];?></h2>
  		<h5 style="text-align:center">You will need to print your <br/>
        <li><span style="list-style: none;font-weight: bold">1. Reference Page</span> </li>
        <li><span style="list-style: none;font-weight: bold">2. Referee Page</span>.</li> 
      This Print out will be required at your next Apllication process.</h5>

  		<a onclick="window.open('<?php echo URL.'recruit/print_ref?id='.$_SESSION['user_details']['id'];?>', 'Print My Reference', 'width=800,height=900');" class="btn btn-md btn-info  rounded g-py-13" style="margin:40px auto;float:none" href="#">Print Reference Page</a>
      <a onclick="window.open('<?php echo URL.'recruit/print_referee?id='.$_SESSION['user_details']['id'];?>', 'Print Referee Form', 'width=800,height=900');" class="btn btn-md btn-success  rounded g-py-13" style="margin:40px auto;float:none" href="#">Print Referee Page</a>
      <a class="btn btn-md u-btn-primary rounded g-py-13" style="margin:40px auto;float:none" href="<?php echo URL.'recruit/logout'; ?>">Logout</a>
  	</p>
  	
  </div>
  
</div>
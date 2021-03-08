<%-- 
    Document   : index
    Created on : Mar 7, 2021, 9:03:03 PM
    Author     : EKaunda
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Master Patient TO Tracker</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                  <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
                  <link href="css/jquery.dataTables.min.css" rel="stylesheet">
		<link href="css/bootstrap.css" rel="stylesheet">
                <link href="css/bootstrap-datepicker.min.css" rel="stylesheet">
                    <link rel="stylesheet" href="css/select2.css">
                    <link rel="shortcut icon" href="images/to.png">
                    <link href="css/styles.css" rel="stylesheet">
                                <style type='text/css'>
input:focus {
    border-color: red;
    }
    .control-group .select2-container {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
  display: table;
  table-layout: fixed;
}

@media screen and (min-width: 600px) and (max-width: 1199px)  {
  #weeklydataform {
    margin-left:20%;
    margin-right:20%;
  }
}

@media screen and (min-width: 1200px) {
  #weeklydataform {
    margin-left:30%;
    margin-right:30%;
  }
}

</style>

                
	</head>
	<body>
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    
    <div class="container-fluid">
        
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
        </div>
        <div class="navbar-collapse collapse">
                       

            
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
              
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
 
                <li ><a  title="Add Widget"   href="#"><i class="glyphicon glyphicon-log-out"></i>Log out</a></li>
                 <li>
                  <a  title="Help" data-toggle="modal" href="#help">
                            <i class="glyphicon glyphicon-question-sign"></i>
                            Help
                        </a></li>
                             
            </ul>
        </div>
        
    </div>
    <!-- /container -->
    
</div>
<!-- /Header -->

<!-- Main -->
<div class="container-fluid">
    <div class="row">
        
        <!-- /col-3 -->
        <div class="col-sm-12">

            
            
          <h5 class="well btn-info" id="feedbacklabel" style="text-align: center;color:blue;font-family: sans-serif;"><b>Patients Transfer Out Verification<b></h5>

   
            <div class="row">
            

                    <hr>


                    <!--tabs-->
                    <div class="panel">
                        <ul class=" nav nav-tabs " id="myTab">
                            <li class="active newdata col-xs-4"><a href="#dataentry" id="newdatabutton" data-toggle="tab">  <i class="glyphicon glyphicon-plus"></i> New Data</a></li>
                           <li class='col-xs-4'><a href="#searchdata" id="searchdatabutton" data-toggle="tab"> <i class="glyphicon glyphicon-edit"></i> View Data</a></li> 
                           <li class="col-xs-4"><a href="#reports" style="display:block;" id="reportsbutton" data-toggle="tab"> <i class="glyphicon glyphicon-stats"></i> Reports</a></li> 
                            
                       </ul>
                        <div class="tab-content">
                            <div class="tab-pane active well col-md-12" id="dataentry">
                                
                                
                              <!--Data entry code-->
                    <div class="panel panel-default">
                       
                        <div class="panel-body" style="width:100%;">
                            <form class="form form-vertical" action="#" method="post" id="weeklydataform">
                                
                                
                                <table class='table table-responsive table-bordered'  style="overflow-x: hidden ;" >
                                
                                <tr><th class="col-xs-12" style="text-align:center"><b>Enter Patient Transfer Out Details</b></th></tr>
                                </table>
                                
                                  <div class="control-group col-xs-12"  >
                                       
                                    <label class="col-xs-12">
                                        <font color="red"><b>*</b></font>Patient CCC No.</label>
                                       
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                        <input  type="text"  onblur="" name="cccno" id="cccno"  autocomplete="off"  class="form-control"  placeholder="1528801786">
                                  
                                    </div>
                                </div>
                                 
                                
                                
                                   <div class="control-group col-xs-12" >
                                    <label class="col-xs-12">
                                        <font color="red"><b>*</b></font> Date Transfer Out was Issued 
                                    </label>
                                    
                                    
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                      <input type="text" onchange="" onblur="" name="enddate" id="enddate" data-date-end-date="0d" autocomplete="off"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                   <input type="hidden"   name ="rowid" id="rowid"  />
                                  
                                    </div>
                                </div>
                                        
                                        
                                <div class="control-group col-xs-12"   >
                                    <label class="col-xs-12"> <font color="red"><b>*</b></font>  Facility Transferring Patient From <span id='from_maill'></span></label>
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                        <select  onchange="loadmail('facilityname_from','from_mail');"style='width:100%;'   name="facilityname_from" id="facilityname_from" class="form-control" >
                                            <option value="" >loading Facility from DHIS2</option>
                                           
                                        </select>
                                        <input type='hidden' id='from_mail' name='from_mail'/>
                                    </div>
                                </div>
                                
                                
                                
                              
                                
 <div class="control-group col-xs-12"   >
                                    <label class="col-xs-12"> <font color="red"><b>*</b>
                                        </font>  Facility Transferring Patient To <span id='to_maill'></span></label>
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                <select  onchange="loadmail('facilityname_to','to_mail');" style='width:100%;' name="facilityname_to" id="facilityname_to" class="form-control" >
                                            <option>Select Facility Name</option>
                                           
                                        </select>
                                        <input type='hidden' id='to_mail' >
                                    </div>
                                </div>
                                
                                                         
                                
                              
                                
                                
        
                                
                                 

                               <div class="control-group col-xs-12" >
                                    <label class="col-xs-12"><font color="red"><b>*</b></font> Effective Check in date to transferring facility </label>
                                    
                                    
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                        <input type="text"  onblur="" name="effectivetodate" id="effectivetodate" autocomplete="off"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                   
                                  
                                    </div>
                                </div>
                                   
                                
                                
                                    <div class="control-group col-xs-12" style="">
                                    <label class="col-xs-12"> <font color="red"><b>*</b></font> Verification Complete?</label>
                                    <div class="controls col-xs-12" style="padding-bottom: 15px;">
                                        <select   name="verification_complete" id="verification_complete" class="form-control" >
                                            <option value="">Select Results</option>
                                            <option value='Yes'>Yes</option>
                                            <option value='No'>No</option>
                                          </select>
                                    </div>
                                </div>
                                
                                  
                                     
                                <table class="table table-striped table-bordered">
                                       <tr><td colspan="3" class="col-xs-12">               
                                <div class="control-group col-xs-12">
                                        <div class="alert-info">Note: Please enter data for all input fields.</div>
                                   <br/>
                                    <div class="controls">
                                        <button type="submit" id='savebutton' onmouseover="setrowid();" onclick="validatedata();" style="margin-left: 0%;" class="btn-lg btn-success active">
                                            SAVE
                                        </button>
                                     </div>
                                    <div class="controls">
                                        <button type="submit" id='updatebutton' onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                            UPDATE
                                        </button>
                                    
                                        
                                    </div>
                                    
                                </div>
                                        </td></tr>
                                        
                                </table>
                            </form>
                        </div>
                        <!--/panel content-->
                    </div>
                    <!--/panel-->

                              
                              <!--Data entry code-->
                            
                            </div>
                            <div class="tab-pane well" id="reports">
                                
                                
                               <!--Dashboard code-->
                            
                               
                               
                               
                                                   <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Dashboard</h4></div>
                        <div class="panel-body">
                            <form id="reportsform">
<table class='table table-striped table-bordered' id="reportstable" >
    
                            </table>
                            </form>
                        </div>
                        <!--/panel-body-->
                    </div>
                    <!--/panel-->

                               
                              
                              <!--Reports entry code-->
                            
                            
                            </div>
                            <div class="tab-pane well" id="export">
                                
                                
                               <!--- Data export---->
                            </div>
                            
                            <div class="tab-pane   well" id="searchdata">
                                 <button id="btnDeleteRow" style='display:none;' value="cancel">Delete selected Row</button>
                                <div style="text-align: center;" id="searchtablediv">
                                    <img style="" src="images/ajax_loader.gif" />
                                </div>    
                               <!--- Data export---->
                            </div>
                            
                            <div class="tab-pane well" id="viewcounsellors">
                                 <button id="btnDeleteRowcns" style='display:none;' value="cancel">Delete selected record</button>
                                <div id="searchtabledivcns">
                                  
                                </div>    
                               <!--- Data export---->
                            </div>
                            
                            
                            </div>
                        </div>

                    </div>
                    <!--/tabs-->

                </div>
                <!--/col-->
               
                <!--/col-span-6-->

            </div>
            <!--/row-->

           


            
        </div>
        <!--/col-span-9-->
    </div>

<!-- /Main -->

<footer class="text-center"> &copy; TO Verify</footer>




<div class="modal" id="excelreport">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button"  class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Generate Excel Report <span id="needsinternet"></span></h4>
            </div>
            <div class="modal-body">
                <form  id="excelreportsfom" method="post">
                                <div class="control-group" style="display:none;">
                                    <label><font color="red"><b>*</b></font>Report Start Date</label>
                                    <div class="controls">
                                       <input type="text"  name ="startdaterpt" id="startdaterpt"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                    </div>
                                </div> 
                    
                    
                  <div class="control-group" style="display:none;">
                                    <label><font color="red"><b>*</b></font>Report End Date</label>
                                    <div class="controls">
                                       <input type="text"  name ="enddaterpt" id="enddaterpt"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                    </div>
                                </div> 
                    
                      <div class="control-group" style="display:none;">
                                    <label>Report Type</label>
                                    <div class="controls" style="display:none;">
                                        <select  name="rpt_type" id="rpt_type" style="width:100%;" class="form-control">
                                           
                                             <!--<option title="From 1st October of the selected date year to the end date specified inside the same date year " value="excelreport_cumulative">Cumulative</option>-->
                                             <option title="Weekly data breakdown per sites" value="reports">Weekly</option>
                                            
                                            
                                           
                                        </select>
                                    </div>
                                </div>
                    
                    
                    
                   <!-- <div class="control-group" >
                                    <label>Facility </label>
                                    <div class="controls">
                                        <select  name="rpt_facility" id="rpt_facility" style="width:100%;" class="form-control">
                                            <option>Select Facility</option>
                                             
                                            
                                           
                                        </select>
                                    </div>
                                </div> -->
                    
                    
                                <div class="control-group">
                                    <label></label>
                                    <div class="controls">
                                        <button onclick=" getreport();" id="excelreportbtn"   style="margin-left: 30%;"  class="btn-lg btn-info active">
                                            Generate
                                        </button>
                                        
                                        <img src='images/ajax_loader.gif' alt='loading' style="display:none; margin-left:30% ;" class='loading'/>
                                        
                                    </div>
                                </div>   
                    
                </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>







	<!-- script references -->
        <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/scripts.js"></script>
                <script src="js/bootstrap-datepicker.min.js"></script>
                <script src="js/table-edits.min.js"></script>
                
<!--                <script type="text/javascript" src="select/selectstyle.js"></script>  
                <link href="select/selectstyle.css" rel="stylesheet">-->
    
          
                
                <script src="js/select2.js"></script>
                <script src="js/pouchdb-7.1.1.js"></script>
                 
                <script type="text/javascript" src="js/datatables.min.js"></script>
                <script type="text/javascript" src="js/transferout_main_functions.js"></script>
  
                <script type="text/javascript">
  $(document).ready(function(){
      
          
    $('.dates').datepicker({
      todayHighlight: true, clearBtn: true, autoclose: true,format: "yyyy-mm-dd",
     });
      
  $('#facilityname').select2();
  
  
  $('#rowid').val("");  
  
  });   
                 </script>


<script>
   
  var user="TO";  
//load data from the cloud server 
   
//load data from the cloud server 
   function getFacilitiesDHIS2(){
       
 
        var facilities="<option value=''>Select Facility</option>";
        
              $.ajax({
                    url:'pullToWeb?datarequest=pullOrgUnits',                            
                    type:'get',  
                    dataType: 'json',  
                    success: function(data) {
                        
                        
                                var dt=data[0].organisationUnits;
     
        console.log("Ni orgunit group size "+dt.length+"   "+dt[0].shortName);
          for(var i=0;i<dt.length;i++){
                       
                            
                  facilities+="<option data-email='"+dt[i].email+"' value='"+dt[i].id+"_"+dt[i].shortName+"'>"+dt[i].shortName+"</option>"; 
                                                      
             
              
              
                        
                     }
                     
                      $("#facilityname_from").html(facilities);
                      $("#facilityname_to").html(facilities);
                  
                   $(document).ready(function() {
            
              $('#facilityname_from').select2();
              $('#facilityname_to').select2();
              
                                 } );
                     
                      }});
   
   }
   
   getFacilitiesDHIS2();
   




//=========================SAVE Form DATA========================


//prepare form data

var id=null;
var cccno=null;
var enddate=null;
var facilityname_from=null;
var facilityname_to=null;
var effectivetodate=null;
var verification_complete=null;



  var allindicatorsarray=["cccno","enddate","facilityname_from","facilityname_to","effectivetodate","verification_complete"];
    


function validatedata(){
    setrowid();
    
    //receive all the fields from the weekly data from
id=$("#rowid").val();
cccno=$("#cccno").val();
enddate=$("#enddate").val();
facilityname_from=$("#facilityname_from").val();
facilityname_to=$("#facilityname_to").val();
effectivetodate=$("#effectivetodate").val();
verification_complete=$("#verification_complete").val();

    //var user=$("#username").val(); 
    var user="dhis2";  
     
       if (enddate==='')
     {         
     alert('Select Test Date');     
   $("#enddate").focus();    
     }
        
     else if(facilityname_from==='')
     { alert('Select facility Transfeering From');
   $("#facilityname_from").css('border-color','red');
     }
      else if(facilityname_to==='')
     { alert('Select facility Transfeering To');
   $("#facilityname_from").css('border-color','red');
     }
    
      else if(facilityname_to===facilityname_from)
     { 
         alert('Patient Cannot be transferred to the same facility');
   $("#facilityname_from").css('border-color','red');
     }
     
     
      else if(effectivetodate==='')
     { alert('effective TO date cannot be blank');
   $("#effectivetodate").css('border-color','red');
     }
     
  


      else if(enddate===effectivetodate)
     { alert('Transfer out date cannot be same as effective TO date');
   $("#facilityname_from").css('border-color','red');
      }
    
   
       else {
   
   id=$("#rowid").val();
      
   $.ajax({
url:'save_data',                            
type:'get', 
data:{
uid:id,
cccno:cccno,
enddate:enddate,
facilityname_from:facilityname_from,
facilityname_to:facilityname_to,
effectivetodate:effectivetodate,
verification_complete:verification_complete,
user:user
},
dataType:'html',  
 success: function(data) {
                        
 $("#feedbacklabel").html(data); 
                  
//                 $('#searchdatabutton').click();      

 //selectsearchdata();
$("#message").show();
$("#actiondone").html(data);
cleardailyfields();

        }});




//call the function that loads entered data
//$("#message").hide().delay(800).fade(400);


console.log('daily data entered');
//open reports tab
 //$('#reportsbutton').click();
 //$('#inpatient_uptake_cmts').focus();
 window.scrollTo(0,0);
//setTimeout(delayedrefresh,1500);
 // delayedrefresh
 //delayedrefresh();
       }
       
    
}


function clickreportstab(){
   
 $('#reportsbutton').click();
}


//===========================================EMPTY WEEKLY DATA FIELDS AFTER INSERT============================================================

function cleardailyfields()
{
   // $("#facilityname").val("");
   //No facility name should have an underscore since its a special key
   
//$("#startdate").val("");   
$("#enddate").val("");
$("#modality").val("");
$("#counsellor").val("");

for(b=0;b<allindicatorsarray.length;b++){
    
  $("#"+allindicatorsarray[b]).val("");  
    
} 

//clear data values

//for(b=0;b<allnontargetindicatorsarray.length;b++){
//    
//  $("#"+allnontargetindicatorsarray[b]).attr("data-previous_"+allnontargetindicatorsarray[b],"0");  
//  $("#"+allnontargetindicatorsarray[b]).attr("data-"+allnontargetindicatorsarray[b],"0");  
//    
//} 

    
}

function clearcmtsandprcent(){
    
   clearcommentsonly();
   clearpercentsonly();
    
}

function clearpercentsonly(){
       //clear progress bar hidden fields too
   
  for(b=0;b<allprogressbar_hiddentext_array.length;b++){
    
  $("#"+allprogressbar_hiddentext_array[b]).val("");  
    
}  
    
}


function clearcommentsonly(){
    
        
       //comnts
 
     for(b=0;b<allcommentsarray.length;b++){
    
  $("#"+allcommentsarray[b]).val("");  
    
                                            }//end of for loop 
    
}



var dbdata="";
var dbdata1="";

//===================================================VIEW WEEKLY DATA============================================================
//a function to select a few search data that should appear in a data table








//--------------------------------------------------------------------------------------------------------------------------------
//
                                                     // appendtablecounsellordata( dbdata1 );
      $("#searchtabledivcns").html("<h3 class='well' style='color:green;'>Select facility name above to load its data</h3>");                                                     
//
//
//--------------------------------------------------------------------------------------------------------------------------------

function appendtabledata(){
    
        var facili=$("#searchfacilityname").val();
        
        console.log(" Loaded facility name "+facili);
        
        if(facili!=='' && facili!=='Select Facility Name'){
        
        var facdetails=facili.split("_");
        
        
    var tbdata="";
    
     tbdata="<table id='searchtable' class='table table-striped table-bordered'><thead><tr><th>Facility</th><th>Facility Started ART</th><th>Reason Not Started ON ART</th><th>Last Updated</th><th>Edit</th></tr></thead><tbody>";
        //id	 facility	 counsellor	 register_no	 serialno	 date_tested	 age	 gender	 modality	 testresult	 linked	 cccno	 linked_site	 other_facility_linked	 reason_not_linked	 reason_for_death	 other_reason_for_death	 reason_for_declining	 other_reason_for_declining	 user	 timestamp	 lastsynced	 datestartedart
    
    appendtableduplicatedata(facdetails[1]);
    
    
    $("#searchtablediv").html("<img style='' src='images/ajax_loader.gif' />");
    
                var rn=Math.random();
              $.ajax({
                    url:'getverificationdata?mfl='+facdetails[1]+'&rn='+rn,                            
                    type:'post',  
                    dataType: 'json',  
                    success: function(data) {
                   
                   console.log(data.length);
                   
                    if(data.length===0)
                   {
                       
                   $("#searchtablediv").html("<h4class='well' style='color:green;text-align:center;'>Selected Facility has no Data. Please select another facility</h4>");    
                       
                   }
                   
                 //alert(data[0].facility_name);    
                     for(var i=0;i<data.length;i++)
                   {
                         tbdata+="<tr id='"+data[i].id+"'><td>"+data[i].facility+"</td><td>"+data[i].counsellor+"</td><td>"+data[i].register_no+"</td><td serialno='"+data[i].serialno+"' >"+data[i].serialno+"</td><td>"+data[i].date_tested+"</td><td>"+data[i].age+", "+data[i].gender+"</td><td>"+data[i].modality+"</td><td>"+data[i].testresult+"</td><td>"+data[i].linked+"</td><td>"+data[i].cccno+"</td><td>"+data[i].linkagedate+"</td><td>"+data[i].linked_site+"</td><td>"+data[i].reason_not_linked+"</td><td>"+data[i].started_on_art+"</td><td>"+data[i].datestartedart+"</td><td>"+data[i].started_tx_site+"</td><td>"+data[i].reason_not_started_art+"</td><td>"+data[i].lastsynced+"</td><td><button class='btn-info' onclick='loadsaveddailydata(\""+data[i].id+"\",\""+data[i].facility+"\",\"no\",\""+data[i].counsellor+"\",\""+data[i].register_no+"\",\""+data[i].serialno+"\",\""+data[i].date_tested+"\",\""+data[i].age+"\",\""+data[i].gender+"\",\""+data[i].modality+"\",\""+data[i].testresult+"\",\""+data[i].linked+"\",\""+data[i].cccno+"\",\""+data[i].linked_site+"\",\""+data[i].other_facility_linked+"\",\""+data[i].reason_not_linked+"\",\""+data[i].reason_for_death+"\",\""+data[i].other_reason_for_death+"\",\""+data[i].reason_for_declining+"\",\""+data[i].other_reason_for_declining+"\",\""+data[i].user+"\",\""+data[i].timestamp+"\",\""+data[i].lastsynced+"\",\""+data[i].datestartedart+"\",\""+data[i].positive_verified+"\",\""+data[i].linkage_verified+"\")'>Edit</button></td></tr>";
     
                 
                 
                 
                 
                        console.log(data[i].id) 
                        
//                        addcounsellorslist( data[i].active,data[i].code,data[i].gender,data[i].county,data[i].cadre,data[i].facility,data[i].mflcode,data[i].fullname,data[i].Currentfacility,data[i].Currentmflcode,data[i].RRI_Name);
//                        updatecounsellorslist( data[i].active,data[i].code,data[i].gender,data[i].county,data[i].cadre,data[i].facility,data[i].mflcode,data[i].fullname,data[i].Currentfacility,data[i].Currentmflcode,data[i].RRI_Name);
//                        
                      if(i===data.length-1)
                      {
                       tbdata+="</tbody>\n\
       <tfoot><tr><th>Facility</th><th>Counsellor</th><th>Register no.</th><th>Serial no.</th><th>Date Tested</th><th>Age and Gender</th><th>Modality</th><th>Test Result</th><th>Linked To ART</th><th>CCC</th><th>Date Linked</th><th>Facility Linked</th><th>Reason Not Linked</th><th>Started on ART</th><th>Date Started ON ART</th><th>Facility Started ON ART</th><th>Reason Not Started ON ART</th><th>Last Updated</th><th>Edit</th></tr></tfoot></table>";
                
                 $("#searchtablediv").html(tbdata); 
                 
                  $('#searchtable tfoot th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" style=\'width:100%;font-size:9px;\' title="Search '+title+'" placeholder="search '+title+'" />' );
    });
                 
                 
                   var table = $('#searchtable').DataTable({"autoWidth": true,
              "paging": true,
              "pagingType": "full",
              "lengthChange": true,  
              "order": [[4,'desc']]});
 
    $('#searchtable tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
             $('#btnDeleteRow').hide();
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
             $('#btnDeleteRow').show();
        }
    } );
    
    
     // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
    
    
 
    $('#btnDeleteRow').click( function () {
        
     var tablerowid=table.$('tr.selected').attr('id');
     var serialno=table.$('tr.selected').find("td:eq(3)").text();
     var facil=table.$('tr.selected').find("td:eq(0)").text();
        
        if(ConfirmDelete()===true){
        
     deletedata(tablerowid);
        
        $("#feedbacklabel").html("Serial No <b>"+serialno+"</b> for <b>"+facil+"</b> deleted successfully");
        
        table.row('.selected').remove().draw(false);
    }
        //call the delete function now
    } );
    
    
     
    
                 
                 
                      } 
                     }
                     
                     
                     
                       
                   
        
                                           }
                                           
                                              ,
                    error: function(XMLHttpRequest, textStatus, errorThrown) {
                      
        alert('error loading data');
	
    }
                        
                         });
       
       }
       else {
           
           
           $("#searchtablediv").html("<h3 class='well' style='color:green;text-align:center;'>Select facility name above to load its data</h3>"); 
           
       }
       
  

          
          
          
          
            
                                    
    
                                                          }

function showreports()
{
 $("#reportsbutton").show();
}


function loadsaveddailydata(id,facility,openreportstab, )

    {
    $("#reportsbutton").show();
 //  alert(id);
 //load from weekly db where id is as selected   
 
 
 
  var mflanddates=id.split('_');
        	
//	 $.ajax({
//                    url:'loadclient?id='+id,                            
//                    type:'post',  
//                    dataType: 'json',  
//                    success: function(data) {
    var rowid=id;    
    //populate div with respective content
    $("#rowid").val(id);
    var mflid=mflanddates[0];
     if(mflid==="17799"){ mflid='18087';  }
    
$("#facilityname").val(mflid+"_"+facility);   
$("#counsellor").val(counsellor);
$("#register_no").val(register_no);
$("#serialno").val(serialno);
$("#enddate").val(date_tested);
$("#age").val(age);
$("#gender").val(gender);
$("#modality").val(modality);
$("#testresult").val(testresult);
$("#linked").val(linked);
$("#cccno").val(cccno);
$("#linked_site").val(linked_site);
$("#other_facility_linked").val(other_facility_linked);
$("#reason_not_linked").val(reason_not_linked);
$("#reason_for_death").val(reason_for_death);
$("#other_reason_for_death").val(other_reason_for_death);
$("#reason_for_declining").val(reason_for_declining);
$("#other_reason_for_declining").val(other_reason_for_declining);
$("#artstartdate").val(datestartedart);


   
     //$('#facilityname').select2(); 
     $('#facilityname').select2();
     $('#counsellor').select2(); 
   
         $("#counsellor").css('width','100%');
         $("#facilityname").css('width','100%');
         $(".select2-container").css('width','100%');
         
     
     $("#savebutton").hide();
     
     $("#updatebutton").show();
     //$("#savenewbutton").show();
     // checkids();
      
      asklinkage();
whichfacility();
specifyFacilityLinked();
isshowdiedordeclined();
isshowdeclinedother();
isshowdeadother();
      
      
 $('#newdatabutton').html("<i class='glyphicon glyphicon-edit'></i>Edit Data");

  //if this is a request to show the unentered comments
  //open the reports tab and focus on the first unentered comment
    if(openreportstab.indexOf("yes")!==-1){
        
      var contentarray=openreportstab.split("@"); 
      //alert(contentarray[1]);
     
      clickreportstab();
 //     document.getElementById(contentarray[1]).focus();
 $("#"+contentarray[1]).focus();
               }
               else {
                $('#newdatabutton').click();    
                   
               }
  
//}});

 selectwidth();
}

$("#refreshpage" ).click(function() 
{
    window.location.reload();
    cleardailyfields();
   
});

$("#exportdataanchor1" ).click(function() 
{
    checkinternet();
   
});


$("#refr" ).click(function() 
{
    window.location.reload();
   // cleardailyfields();
});


$("#refr1" ).click(function() 
{
    window.location.reload();
   // cleardailyfields();
});

function delayedrefresh()
{
      window.location.reload();
    cleardailyfields();
}


function updateweeklydata()
{
 //this id will be used to update the entered data
   var id=$("#rowid").val();
   
   var newid="";
  // var annualid=id.replace(/weekly/g,"annual");
   
 //receive all the fields from the weekly data from
//id=$("#rowid").val();
facility=$("#facilityname").val();
var mf=facility.split("_");

counsellor=$("#counsellor").val();
register_no=$("#register_no").val();
serialno=$("#serialno").val();
date_tested=$("#enddate").val();
age=$("#age").val();
gender=$("#gender").val();
modality=$("#modality").val();
testresult=$("#testresult").val();
linked=$("#linked").val();
cccno=$("#cccno").val();
linked_site=$("#linked_site").val();
other_facility_linked=$("#other_facility_linked").val();
reason_not_linked=$("#reason_not_linked").val();
reason_for_death=$("#reason_for_death").val();
other_reason_for_death=$("#other_reason_for_death").val();
reason_for_declining=$("#reason_for_declining").val();
other_reason_for_declining=$("#other_reason_for_declining").val();
datestartedart=$("#artstartdate").val();
//user=$("#user").val();
timestamp=$("#timestamp").val();

newid=mf[0]+"_"+serialno+"_"+register_no+"_"+modality+""+(date_tested.replace("-","").substring(0,6));
    
    //var user=$("#username").val(); 
    var user="hsdsa"; 
   // var timestamp = $.now();
    
         console.log("Urefu wa CCC Number "+cccno.length); 
    
    var currentdate = new Date();
    
   var mn=""+(currentdate.getMonth()+1) ;
    var dt=""+currentdate.getDate();
    var hr=""+currentdate.getHours();
    var min=""+currentdate.getMinutes();
    var sc=""+currentdate.getSeconds();
    if(mn.length===1){mn='0'+mn;}
    if(dt.length===1){dt='0'+dt;}
    if(hr.length===1){hr='0'+hr;}
    if(min.length===1){min='0'+min;}
    if(sc.length===1){sc='0'+sc;}
    
    
    var timestamp = "" + currentdate.getFullYear() + "-"+ mn + "-"+ dt + " "+ hr+ ":" + min+ ":"+ sc;
    
    
    if(user===''){user='hsdsa';}
    
    var syncstatus='No';  
    
     var id=null;
          
     if(facility==='')
     {         
  
   alert('Select facility');
   //$("#facilityname select:first").focus();
   
   $("#facilityname").css('border-color','red');
    //$("select:first").focus();
     }
     
     else if(counsellor===''||counsellor==='select  Counsellor')
     {         
  
   alert('Select Counsellor');
   //$("#facilityname select:first").focus();
   
   $("#counsellor").css('border-color','red');
    //$("select:first").focus();
     }
     
     else if(modality==='')
     {         
  
   alert('Select Modality');
   //$("#facilityname select:first").focus();
   
   $("#modality").css('border-color','red');
    //$("select:first").focus();
     }
     
//     //startdate
//     else if (startdate==='')
//     {
//         
//     alert('Select week begining date');
//   $("#startdate").focus();    
//     }    
   //end date
      else if (enddate==='')
     {
         
     alert('Select Test Date');
   $("#enddate").focus();    
     } 
     

else if(register_no==='') { alert(' Enter  Register Number');  $('#register_no').focus(); }
else if(serialno==='') { alert(' Enter patient  serial number');  $('#serialno').focus(); }
else if(date_tested==='') { alert(' Select date tested');  $('#enddate').focus(); }
else if(age==='') { alert(' Enter Age');  $('#age').focus(); }
else if(gender==='') { alert(' Enter Gender');  $('#gender').focus(); }
//else if(modality==='') { alert(' Select modality');  $('#modality').focus(); }
else if(testresult==='') { alert(' Enter  test result');  $('#testresult').focus(); }
else if(testresult==='Positive' && linked==='') { alert(' Specify if client is linked');  $('#linked').focus(); }

else if(linked==='Yes' && cccno==='') { alert(' enter cccno');  $('#cccno').focus(); }
 else if(linked_site==='This Facility' && cccno.length!==11) { alert(' Ensure the ccc number is 11 digits eg 15358-01234');  $('#cccno').focus(); }
 
 //else if(modality==='') { alert(' Select modality');  $('#modality').focus(); }
else if(testresult==='') { alert(' Enter  test result');  $('#testresult').focus(); }
else if(testresult==='Positive' && linked==='') { alert(' Specify if client is linked');  $('#linked').focus(); }
 else if(linked==='Yes' && datestartedart==='') { alert(' Enter date started on ART');  $('#artstartdate').focus(); }

else if(date_tested!=='' && datestartedart!=='' && Date.parse(date_tested) > Date.parse(datestartedart) ) { alert(' Date started on ART cannot be less than date tested for HIV');  $('#artstartdate').focus(); }
 
 
else if(linked==='Yes' && linked_site==='') { alert(' Select linked_site');  $('#linked_site').focus(); }
else if(linked_site==='Other Facility' && other_facility_linked==='') { alert(' Specify the name of other facility linked');  $('#other_facility_linked').focus(); }
else if(linked==='No' && reason_not_linked==='' ) { alert('Specify reason not linked');  $('#reason_not_linked').focus();  }
else if(  reason_not_linked==='Died' && reason_for_death==='' && linked==='No') { alert('Specify reason for death');  $('#reason_for_death').focus();  }
else if( reason_for_death==='Other natural causes' && other_reason_for_death==='' && linked==='No') { alert('Specify  other reason for death');  $('#other_reason_for_death').focus(); }
else if(reason_not_linked==='Declined' && reason_for_declining==='' && linked==='No') { alert(' Select reason for declining');  $('#reason_for_declining').focus();  }
else if(reason_for_declining==='Other reason' && other_reason_for_declining==='' && linked==='No') { alert(' Specify the other reason for declining');  $('#other_reason_for_declining').focus(); }

   
       else {
           
     var facilitynameandmfl=facility.split("_");        
    // var startd=startdate.replace('-','');      
     //var startd=startd.replace('-','');      
     var endd=enddate.replace('-','');      
     var endd=endd.replace('-','');      
     var cns=counsellor.replace('-','');
     var mod=modality.replace('-','');     
         
     var facilityname=facilitynameandmfl[1];
            //save data to the db
 // saveweeklyupdates(id,facilitynameandmfl[1],enddate,counselorname,modality, tested,positive_tg,positive,linked_here,linked_else,declined,dead,tca,timestamp,user, syncstatus) ;
        
            //________________________________
          
     id=$("#rowid").val();
     
     
  
  //saveweeklyupdates(id,facilityname,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked
  //,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,timestamp,user, syncstatus,datestartedart) ;
  
  
  
  $.ajax({
url:'receive_live_data',                            
type:'get', 
data:{
    id:id,
facility:facilityname,
counselorname:counsellor,
register_no:register_no,
serialno:serialno,
date_tested:date_tested,
age:age,
gender:gender,
modality:modality,
testresult:testresult,
linked:linked,
cccno:cccno,
linked_site:linked_site,
other_facility_linked:other_facility_linked,
reason_not_linked:reason_not_linked,
reason_for_death:reason_for_death,
other_reason_for_death:other_reason_for_death,
reason_for_declining:reason_for_declining,
other_reason_for_declining:other_reason_for_declining,
datestartedart:datestartedart,
user:user,
timestamp:timestamp,newid:newid
},
dataType:'html',  
                    success: function(data) {
                        
                  $("#feedbacklabel").html(data); 
                  
                 $('#searchdatabutton').click();       
        }});
  
  
 
            //
            //________________________________
            
            
            

//call refressh code here

 //selectsearchdata();
$("#message").show();
$("#actiondone").html("Data Updated Successfully");
//call the function that loads entered data
window.scrollTo(0,0);
console.log('weekly data updated');

//$('#reportsbutton').click();
//$('#inpatient_uptake_cmts').focus();
//setTimeout(delayedrefresh,1800);
//delayedrefresh();
       }
       
    
}
   
function saveweeklyupdates(id,facilityname,counsellor,register_no,serialno,date_tested,age,gender,modality,testresult,linked,cccno,linked_site,other_facility_linked,reason_not_linked,reason_for_death,other_reason_for_death,reason_for_declining,other_reason_for_declining,timestamp,user, syncstatus,datestartedart) {
 
 
 
 
 dailydatadb.get(id).then(function (doc) {
        
  //doc.age = 4;
 //alert(id);
   if(id!=='null' && id!=='' ){
        //doc._id=id;
  
doc.facility=facilityname;
doc.counselorname=counsellor;
doc.register_no=register_no;
doc.serialno=serialno;
doc.date_tested=date_tested;
doc.age=age;
doc.gender=gender;
doc.modality=modality;
doc.testresult=testresult;
doc.linked=linked;
doc.cccno=cccno;
doc.linked_site=linked_site;
doc.other_facility_linked=other_facility_linked;
doc.reason_not_linked=reason_not_linked;
doc.reason_for_death=reason_for_death;
doc.other_reason_for_death=other_reason_for_death;
doc.reason_for_declining=reason_for_declining;
doc.other_reason_for_declining=other_reason_for_declining;
doc.datestartedart=datestartedart;
doc.user=user;
doc.timestamp=timestamp;
doc.syncstatus=syncstatus; 

        
        
   //alert('called');
  // put them back
  return dailydatadb.put(doc);
   }
});
 
 
 //daily data
 
 
 
 
} 
    
  
//==================function to import data

// $('#exportbutton').on('click',function() {
    $("#exportbutton").prop("disabled",false);
     $(this).removeClass('btn-lg btn-default').addClass('btn btn-success');
//});

var syncstatusarray=[];

function importdata(){
    
    var returnedresponses=0;
   // $('#exportbutton').on('click',function() {
    $("#exportbutton").prop("disabled",true);
    $("#exportbutton").removeClass('btn-lg btn-success').addClass('btn btn-default');

var recordsunexported=$("#unexported").val();
                //read db files that have not been synced
    
  $("#exportbutton").hide();
  $("#exportmsg").show();
   $("#exportresponse").append("<b><font color='orange'>Exporting data.. please wait response.</b><br/>");
  
  dailydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 syncstatusarray=[];
      //read where sync is 0
	   var skipexporting=0;
	   for(c=0;c<doc.total_rows;c++){
               $("#exportbutton").hide();
               $("#exportmsg").show();
               //a variable to check if all comments are added for percents below 80 percent and not amongest the indicators that can be skipped.
             
            var missingcomment="";
	   var dat={};
	   dat=doc.rows[c];
	     // console.log(dat.doc.facility);
              //how to reference each column 
              
              var idyangu=dat.doc._id;
		  var num=parseInt(c)-1;
	var missingcommentid="";
        if(dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no")
                        {

           
              var hrf=" <button class='btn-sm button-info' data-dismiss='modal' onclick=\"loadsaveddailydata('"+dat.doc._id+"','"+dat.doc.facility+"','no"+missingcommentid+"'); \"> Enter Comments</button>";
           

        
        if(skipexporting===0){
            
            updatesyncstatus(dat.doc._id,'Yes');
        
        
            
             $.ajax({
url:'receiveData',                            
type:'get', 
data:{
    id:dat.doc._id,
facility:dat.doc.facility,
counselorname:dat.doc.counselorname,
register_no:dat.doc.register_no,
serialno:dat.doc.serialno,
date_tested:dat.doc.date_tested,
age:dat.doc.age,
gender:dat.doc.gender,
modality:dat.doc.modality,
testresult:dat.doc.testresult,
linked:dat.doc.linked,
cccno:dat.doc.cccno,
linked_site:dat.doc.linked_site,
other_facility_linked:dat.doc.other_facility_linked,
reason_not_linked:dat.doc.reason_not_linked,
reason_for_death:dat.doc.reason_for_death,
other_reason_for_death:dat.doc.other_reason_for_death,
reason_for_declining:dat.doc.reason_for_declining,
other_reason_for_declining:dat.doc.other_reason_for_declining,
datestartedart:dat.doc.datestartedart,
user:dat.doc.user,
timestamp:dat.doc.timestamp
},
dataType:'html',  
                    success: function(data) {
                       
                       returnedresponses++;
                       
                        $("#exportresponse").append("<b>*"+data+'</b><br/>');
                         
                
                         
                   //doc.syncstatus="Yes"; 
   //alert('called');
  // put them back
                   // return dailydatadb.put(doc); 
                   console.log(parseInt(returnedresponses)+" vs "+parseInt(recordsunexported));
                   
                   if(parseInt(returnedresponses)===parseInt(recordsunexported)){
                 $("#exportbutton").show();
                 $("#exportmsg").hide();
                 if(returnedresponses<1000){
                 $("#exportresponse").append("<br/>.<br/>.<br/>.<br/><b><font color='green'><b>"+returnedresponses+" records</b> completed successfully. </b>"); 
             setTimeout(delayedrefresh,2000);
            }
             else {
                      $("#exportresponse").append("<b><font color='orange'>Exporting did not complete successfully.</b>"); 
                 
             }
                       
                   }
        
                                        },
                                 error:function(xhr, s, e){
                                     
                                     console.log("Could not export data");
                                     
                                     $("#exportresponse").append("<b><font color='red'>Exporting did not complete successfully  .</b>"+e); 
                // updatesyncstatus(dat.doc._id,'No');
                                  returnedresponses=1000;   
                                 }       
                        
                         });
            
                        }//end of if skipp exporting === 0
                        //for annual exports, dont sync and dont show alert
                        else if (skipexporting!==0 && idyangu.indexOf("annual")>=0) {
                       //dont show export failure message     
                            
                        }
            else {
                
                
                $("#exportresponse").append("<br/><b>NOTE:</b><font color='red'> Data for <b>"+dat.doc.facility+"</b> not uploaded due to missing comment(s) on section <b><i>"+missingcomment+"</i></b></font> "+hrf+" <br/>");
            }
                        }
        
                 
                 
                 //if its last loop show
                 
           
                  
             
            if(c===(doc.total_rows-1)){
//                  //$("#exportbutton").show();
//                 //$("#exportmsg").hide();
//                 $("#exportresponse").append("<b><font color='orange'>Exporting Completed.</b>");
  
                      }
          	    } //end of for loop
	 
	
		
  }).then(function (){
     // alert('export complete');
     
           // if(c===parseInt(doc.total_rows)){
                
              // for(var s=0;s<syncstatusarray.length;s++){
//                    
               //  updatesyncstatus(syncstatusarray[s]);
                
          // }
     
  }).catch(function (err){ console.log(err); });
          
  //$("#exportbutton").show();
  //$("#exportmsg").hide();	
   //refresh number of uninmported sites.
   //unsynceddata()
        
        
}



function exportalldata(){
    
    var returnedresponses=0;
   // $('#exportbutton').on('click',function() {
    $("#exportbutton1").prop("disabled",true);
    $("#exportbutton1").removeClass('btn-lg btn-success').addClass('btn btn-default');

 $("#exportbutton").prop("disabled",true);
 $("#exportbutton").removeClass('btn-lg btn-success').addClass('btn btn-default');

var recordsunexported=$("#unexported").val();
                //read db files that have not been synced
    
  $("#exportbutton1").hide();
  $("#exportmsg1").show();
   $("#exportresponse1").append("<b><font color='orange'>Exporting all data.. please wait response.</b><br/>");
  
  
   $("#exportbutton").hide();
  $("#exportmsg").show();
   $("#exportresponse").append("<b><font color='orange'>Exporting all data.. please wait response.</b><br/>");
  
  
  
  dailydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 syncstatusarray=[];
      //read where sync is 0
	   var skipexporting=0;
	   for(c=0;c<doc.total_rows;c++){
               $("#exportbutton1").hide();
               $("#exportmsg1").show();
               
                  $("#exportbutton").hide();
               $("#exportmsg").show();
               
               //a variable to check if all comments are added for percents below 80 percent and not amongest the indicators that can be skipped.
             
            var missingcomment="";
	   var dat={};
	   dat=doc.rows[c];
	     // console.log(dat.doc.facility);
              //how to reference each column 
              
              var idyangu=dat.doc._id;
		  var num=parseInt(c)-1;
	var missingcommentid="";
        if(dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no"  || dat.doc.syncstatus==='Yes')
                        {

           
              var hrf=" <button class='btn-sm button-info' data-dismiss='modal' onclick=\"loadsaveddailydata('"+dat.doc._id+"','"+dat.doc.facility+"','no"+missingcommentid+"'); \"> Enter Comments</button>";
           

        
        if(skipexporting===0){
            
            updatesyncstatus(dat.doc._id,'Yes');
        
        
            
             $.ajax({
                         url:'receiveData',                            
                        type:'get', 
data:{

id:dat.doc._id,
facility:dat.doc.facility,
counselorname:dat.doc.counselorname,
register_no:dat.doc.register_no,
serialno:dat.doc.serialno,
date_tested:dat.doc.date_tested,
age:dat.doc.age,
gender:dat.doc.gender,
modality:dat.doc.modality,
testresult:dat.doc.testresult,
linked:dat.doc.linked,
cccno:dat.doc.cccno,
linked_site:dat.doc.linked_site,
other_facility_linked:dat.doc.other_facility_linked,
reason_not_linked:dat.doc.reason_not_linked,
reason_for_death:dat.doc.reason_for_death,
other_reason_for_death:dat.doc.other_reason_for_death,
reason_for_declining:dat.doc.reason_for_declining,
other_reason_for_declining:dat.doc.other_reason_for_declining,
datestartedart:dat.doc.datestartedart,
user:dat.doc.user,
timestamp:dat.doc.timestamp
},
dataType: 'html',  
                    success: function(data) {
                       
                       returnedresponses++;
                       
                        $("#exportresponse1").append("<b>*"+data+'</b><br/>');
                        $("#exportresponse").append("<b>*"+data+'</b><br/>');
                         
                
                         
                   //doc.syncstatus="Yes"; 
   //alert('called');
  // put them back
                   // return dailydatadb.put(doc); 
                   console.log(parseInt(returnedresponses)+" vs "+parseInt(doc.total_rows));
                   
                 if(parseInt(returnedresponses)===parseInt(doc.total_rows)){
                 $("#exportbutton1").show();
                 $("#exportmsg1").hide();
                 if(returnedresponses<1000)
            {
             $("#exportresponse1").append("<br/>.<br/>.<br/>.<br/><b><font color='green'><b>"+returnedresponses+" records</b> completed successfully. </b>"); 
             $("#exportresponse").append("<br/>.<br/>.<br/>.<br/><b><font color='green'><b>"+returnedresponses+" records</b> completed successfully. </b>"); 
             setTimeout(delayedrefresh,2000);
            }
             else 
             {
             $("#exportresponse1").append("<b><font color='orange'>Exporting did not complete successfully.</b><br/>"); 
             $("#exportresponse").append("<b><font color='orange'>Exporting did not complete successfully.</b><br/>"); 
                 
             }
                       
                   }
        
                                        },
                                 error:function(xhr, s, e)
                                 {
                                     
                   console.log("Could not export data");
                                     
                   $("#exportresponse1").append("<b><font color='red'> Exporting did not complete successfully  .</b><br/>"+e); 
                   $("#exportresponse").append("<b><font color='red'> Exporting did not complete successfully  .</b><br/>"+e); 
                // updatesyncstatus(dat.doc._id,'No');
                                  returnedresponses=1000;   
                                 }       
                        
                         });
            
                        }//end of if skipp exporting === 0
                        //for annual exports, dont sync and dont show alert
                        else if (skipexporting!==0 && idyangu.indexOf("annual")>=0) {
                       //dont show export failure message     
                            
                        }
            else {
                
                
                $("#exportresponse1").append("<br/><b>NOTE:</b><font color='red'> Data for <b>"+dat.doc.facility+"</b> not uploaded due to missing comment(s) on section <b><i>"+missingcomment+"</i></b></font> "+hrf+" <br/>");
                $("#exportresponse").append("<br/><b>NOTE:</b><font color='red'> Data for <b>"+dat.doc.facility+"</b> not uploaded due to missing comment(s) on section <b><i>"+missingcomment+"</i></b></font> "+hrf+" <br/>");
            }
                        }
        
                 
                 
                 //if its last loop show
                 
           
                  
             
            if(c===(doc.total_rows-1)){
//                  //$("#exportbutton").show();
//                 //$("#exportmsg").hide();
//                 $("#exportresponse").append("<b><font color='orange'>Exporting Completed.</b>");
  
                      }
          	    } //end of for loop
	 
	
		
  }).then(function (){
     // alert('export complete');
     
           // if(c===parseInt(doc.total_rows)){
                
              // for(var s=0;s<syncstatusarray.length;s++){
//                    
               //  updatesyncstatus(syncstatusarray[s]);
                
          // }
     
  }).catch(function (err){ console.log(err); });
          
  //$("#exportbutton").show();
  //$("#exportmsg").hide();	
   //refresh number of uninmported sites.
   //unsynceddata()
        
        
}




function updatesyncstatus(id,st){
  
dailydatadb.get(id).then(function (doc1) {
      console.log(id+" sync status updated");
 doc1.syncstatus=st;
 return dailydatadb.put(doc1);
 
});

	
    
}//end of function



</script>
<script>


//========================================201605 custom percentage calculator======================================




   function numbers(evt){
      
var charCode=(evt.which) ? evt.which : evt.keyCode
 console.log(charCode);
 /*
if(charCode > 31 && (charCode < 48 || charCode>57)){
return false;
}
*/
//43=+  9=TAB 8=BACKSPACE 
 if( charCode===43 ||  charCode===9 ||  charCode===8 || charCode===46 || ( charCode >= 48 && charCode<=57)){
    
 return true;   
}
else {
return false;
}
}

//Codes to prevent default form submission

$("#userform").submit(function(e){
    return false;
});




$("#exportdataform").submit(function(e){
    return false;
});

$("#reportsform").submit(function(e){
    return false;
});

$("#excelreportsfom").submit(function(e){
    return false;
});

 $('input').css('border-color','#337ab7');


//prevent numbers scrolling

$('form').on('focus', 'input[type=number]', function (e) {
  $(this).on('mousewheel.disableScroll', function (e) {
    e.preventDefault()
  })
});
$('form').on('blur', 'input[type=number]', function (e) {
  $(this).off('mousewheel.disableScroll')
});



function selectwidth(){
  
   
      $("#facilityname_from").width('74%');
      $("#facilityname_to").width('74%');
    
}

function selectwidth100(){
  
   
      $("#facilityname_from").width('100%');
      $("#facilityname_to").width('100%');
    
}

selectwidth100();

 
   
             

</script>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover(); 
    
  
    
});






function getreport(){
    
    

     var exelstart="2018-10-01";
    var exelend="2019-09-30";
    
    var countyrpt=$("#rpt_county").val();
    var rpttypeurl=$("#rpt_type").val();   
        if (exelstart==='')
     {
         
     alert('Select report begining date');
   $("#startdaterpt").focus();    
     }    
   //end date
      else if (exelend==='')
     {
         
     alert('Select report ending date');
   $("#enddaterpt").focus();    
     } 
     
      else  if(Date.parse(exelstart) > Date.parse(exelend)){
                    alert(" Report Start date cannot be greater than end date.");   
                    $("#enddaterpt").focus();  
                }
                else {
                    //call the report generation page
                 downloadrpt(exelstart,exelend,countyrpt,rpttypeurl) ;  
                    
                }
        
    
}



  function downloadrpt(startdate,enddate,cnty,rpttypeurl){
      
                $('.loading').show();
                $('#excelreportbtn').hide();
               
                //?startdate=" + startdate + "&enddate=" + enddate + "&cbos=" + cbos
             
                var ur=hostname+""+rpttypeurl+"?startdate=" + startdate + "&enddate=" + enddate+ "&county=" + cnty ;
 console.log(ur);
                $.fileDownload(ur).done(function () { $('.loading').hide(); $('#excelreportbtn').show(); $('#excelreportbtn').html("<i class='glyphicon glyphicon-ok'></i> Report Generated"); }).fail(function () { alert('Report generation failed, kindly try again!'); $('.loading').hide(); $('#excelreportbtn').show(); });
 
                //$('.loading').hide();
            }



  function resetgeneratebutton(){
    
   $("#excelreportbtn").removeClass('btn-lg btn-success active').addClass('btn-lg btn-info active');  
    
}





//confirm delete data


function ConfirmDelete()
    {
      var x = confirm("Are you sure you want to delete the selected data?");
      if (x)
          return true;
      else
        return false;
    }






function deletedata(id){
    
  $.ajax({
             url:'deletedata?id='+id,                            
            type:'get',  
            dataType: 'html',  
           
    success: function(data) {
              
   
    }
                                           
    ,
    error: function(XMLHttpRequest, textStatus, errorThrown) 
    {
        //alert('offline');
	
    }
                        
                         });

  
    
}




function setrowid(){
    var id="";
       //load uuid
       
       $.ajax({
                    url:'loadUUID',                            
                    type:'get',  
                    dataType: 'html',  
                    success: function(id) {
                       $("#rowid").val(id);    
                      console.log(" uuid sasa ni "+id);    
                    }
                    });
       
 
    
  
}


setrowid();


function loadmail(fieldn,inputf){
    
    
    var code=$("#"+fieldn).find(':selected').data("email");
  if(code!=='undefined'){  
   $("#"+inputf).val(code);
   $("#"+inputf+"l").html("<i style='color:green;'>email : "+code+"</i>");
  }
  else{
       $("#"+inputf).val("No Email Adress");     
       $("#"+inputf+"l").html("<i style='color:red;'>No email adress</i>");   
  }
    
} 





</script>



	</body>
</html>


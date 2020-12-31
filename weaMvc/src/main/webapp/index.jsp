<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 
  </head>
  
  <body>
  
   <select id="coun">
   <option value="999">Australian</option>
   </select>
   <select id="city">
   <option value="Sydney">Sydney</option>
   <option value="Melbourne">Melbourne</option>
   <option value="Wollongong">Wollongong</option>
   </select>
   <hr/>
   <table>
        <tr>
			<td><label>City :</label></td>
			<td><span id="sCity"></span></td>
		</tr>
		<tr>
			<td><label>Updated time :</label></td>
			<td><span id="upt"></span></td>
		</tr>
		<tr>
			<td><label>Weather :</label></td>
			<td><span id="des"></span></td>
		</tr>
		<tr>
			<td><label>Temperature :</label></td>
			<td><span id="tem"></span></td>
		</tr>
		<tr>
			<td><label>Feel Like :</label></td>
			<td><span id="fTem"></span></td>
		</tr>
		<tr>
			<td><label>wind :</label></td>
			<td><span id="wind"></span></td>
		</tr>
   <script type="text/javascript">
   
     $("#city").change(function(){ 
       var data={"city":$("#city option:selected").val()};
       $.ajax({
        url:'weatherSer',
        type:'POST',
        data:data,
        dataType:'html',
        success:function(res){
        	var data=JSON.parse(res);
        	var sCity={"city":$("#city option:selected").val()};
        	$("#sCity").text(sCity.city).css("color","blue");
        	$("#upt").text("Current").css("color","blue");
        	$("#des").text(data.wea).css("color","blue");
            $("#tem").text(data.tem).css("color","blue");
            $("#wind").text(data.wind).css("color","blue");
            $("#fTem").text(data.feelTem).css("color","blue");
        },
        error : function() {  
            alert("error")  
        }   
    })
       });     
   </script>
  </body>
</html>
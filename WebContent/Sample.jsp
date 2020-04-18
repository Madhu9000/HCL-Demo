<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Product EOS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<img src="https://modelsconf19.org/wp-content/uploads/logos/HCL.png" width="" height="40"/>
	<center>
		<font size="+2" color="#1E90FF">
			<h2><%="Welcome To HCL Unica Support !"%></h2></font>
			<TABLE>
				<TR>
					<td><font size="+2">Products End Of Support</font></td>

				</tr>
			</TABLE> 
	<button type="button" class="btn btn-info btn" data-toggle="modal" data-target="#myModal">Add Products EOS</button>
	
	<form action="./InsertProductEOS" method="post">			
	<div class="modal fade" id="myModal" role="dialog">
    
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Adding Product EOS</h4>
        </div>
        <div class="modal-body">
                
               
                    <div class="form-group">
                        <input type="text" class="form-control" name="Productname" placeholder="Enter Product Name" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="version" placeholder="Enter Product Version" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="eos" placeholder="Enter Product EOS" required>
                    </div>
                    
              
               
                
            </div>
            <button type="submit" class="btn btn-primary">Save </button>
      </div>
      
    </div>
      
  </div>

    </form>
</body>
</html>
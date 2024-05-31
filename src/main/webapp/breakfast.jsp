<%@page import="org.SMMess.admin.model.BreakFastModel"%>
<%@page import="org.SMMess.admin.service.adminServiceImpl"%>
<%@page import="org.SMMess.admin.service.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bill Generator</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f2f2f2;
}

.main {
	display: flex;
	justify-content: center;
	align-items: center;
	height: auto;
}

.billbox {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	max-width: 450px;
}

.inputs label {
	margin-bottom: 5px;
	display: block;
	font-weight: bold;
}

.inputs input[type="number"], .inputs input[type="date"], .inputs input[type="text"]
	{
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

.checkbox-group {
	margin-bottom: 10px;
}

.checkbox-group label {
	display: inline-block;
	margin-bottom: 5px;
	margin-right: 10px;
	/* Add margin-right for spacing */
	padding: 5px;
	/* Add padding for better appearance */
	background-color: #f9f9f9;
	/* Add background color for better visibility */
	border-radius: 5px;
	/* Add border radius for rounded corners */
}

.checkbox-group input[type="checkbox"] {
	display: inline-block;
	margin-right: 5px;
}

.btn {
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn:hover {
	background-color: #45a049;
}

.checkbox-item {
	display: flex;
	align-items: center; /* Align items vertically */
}

.checkbox-item input[type="checkbox"] {
	margin-right: 5px;
}

.quantity-input {
	margin-left: 10px;
	/* Add some spacing between checkbox and quantity input */
}

.qtyboxes {
	margin: auto;
}
/* Style for the lunch/dinner quantity input */
#Lunch-qty {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

.Bill_heading {
	text-align: center;
}

.Bill_heading span {
	color: red;
}

.Bill_heading
 
h5
,
{
color
:
 
#1c00b5
;


}
.Bill_headingh6 {
	color: #ccc;
}

.scrollable-div {
	width: 450px;
	height: 300px; /* Define your desired height */
	overflow: auto; /* Add scrollbar when content exceeds the dimensions */
	border: 1px solid #ccc;
	padding: 10px;
}
</style>
</head>

<body>
	<%@include file="selectBillType.jsp"%>
	<form action="billcontroller" method="post">
		<div class="main" >
			<div class="billbox scrollable-div" id="content-to-print">
				<div class="Bill_heading">
					<h5>Thank You for Raching us</h5>
					<h6>
						<span>SM</span>Mess Welcomes You Always
					</h6>
					<br>
				</div>
				<div class="inputs">
					<%
					adminService aService = new adminServiceImpl();
											int bill_no = aService.getBillNo();
					%>
					<label for="bill-no">Bill No:</label> <input type="number"
						name="billno" id="bill-no" value="<%=bill_no%>" readonly
						required="required"> <label for="date">Date:</label> <input
						type="date" name="date" id="date" readonly required> <label>Breakfast
						Item:</label>
					<table>

						<div class="checkbox-group">
							<table>
								<%
								aService = new adminServiceImpl();
														List<BreakFastModel> list = aService.getAllBreakfastType();
														for (BreakFastModel model : list) {
								%>
								<tr>
									<td>
										<div class="checkbox-item">
											<input type="checkbox" name="b-item" id="tea"
												value="<%=model.getId()%>">
											<%=model.getbName()%>

										</div>
									</td>
									<td><div class="qtyboxes">
											<input type="number" name="qty" id="qty"
												placeholder="Quantity" onkeyup="generateBill(this.value)">
										</div></td>
									<td><input type="number" name="" id="price"
										value=<%=model.getPrice()%>></td>
								</tr>
								<%
								}
								%>
							</table>
						</div>
					</table>
					<label for="Lunch-qty">BreakFast Bill</label> <input type="number"
						name="price" id="Lunch-qty" placeholder="₹" required>
					<button class="btn" onclick="generateBill()"
						style="background-color: #1c00b5; color: white;">Generate
						Bill</button>
					
				</div>
			</div>
		</div>
	</form>
	<script>
		let date = new Date();
		let formattedDate = date.toISOString().slice(0, 10); // Get YYYY-MM-DD format
		document.getElementById("date").value = formattedDate;
		function generateBill() {
			let qtyInputs = document
					.querySelectorAll(".qtyboxes input[type='number']");
			let priceInputs = document.querySelectorAll("#price");
			let totalBill = 0;

			for (let i = 0; i < qtyInputs.length; i++) {
				let qty = parseInt(qtyInputs[i].value);
				let price = parseInt(priceInputs[i].value);
				if (!isNaN(qty) && !isNaN(price)) {// here it will check coming value is a number or not if it is number 
					let itemTotal = qty * price; //then we can calculate our breakfast bill overe here
					totalBill += itemTotal;
				}
			}
			document.querySelector("#Lunch-qty").value = totalBill;
			console.log("Total Bill:", totalBill);
			console.log("Bill generated successfully!");
		}
		
	</script>
</body>

</html>
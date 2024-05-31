<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dropdown Options with User Input</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
        }

        h1 {
            color: #333;
        }

        .dropdown {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            margin-right: 10px;
        }

        select,
        input,
        button {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
            margin-bottom: 10px;
        }

        .hidden {
            display: none;
        }

        .details {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 15px;
            margin-top: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .details div {
            margin-top: 10px;
        }
    </style>
</head>

<body>
<%@include file="candidateDashboard.jsp"%>
<div class="container">
    <h2>Mark Attendance Of Mess Candidate</h2>
	<form action="" method="get">
    <div class="dropdown" >
        <label for="options">Choose an option :</label>
        <select id="options" name="options" onchange="showNextDiv('options', 'optionDetails')">
            <option value="">--Select an option To Mark--</option>
            <option value="name">Name</option>
            <option value="email">Email</option>
            <option value="contact">Contact</option>
        </select>
    </div>
	</form>
    <div id="optionDetails" class="details hidden">
        <form id="" method="get" action="searchCandidate">
            <div id="nameDetails" class="hidden">
                <label for="nameInput">Enter your name:</label>
                <input type="text" id="nameInput" name="nameinput">
            </div>
            <div id="emailDetails" class="hidden">
                <label for="emailInput">Enter your email:</label>
                <input type="text" id="emailInput" name="emailinput">
            </div>
            <div id="contactDetails" class="hidden">
            	                <label for="contactInput">Enter your contact number:</label>
                <input type="text" id="contactInput" name="contactinput">
            </div>
            <button type="submit" onclick="submitDetails()">Submit</button>
        </form>
    </div>

    <div id="userDetails" class="details hidden">
        <h2>Entered Details:</h2>
        <p id="userDetailsContent"></p>
    </div>
</div>
    <script>
        function showNextDiv(dropdownId, nextDivId) {
            // Hide all specific option detail divs
            var details = ['nameDetails', 'emailDetails', 'contactDetails'];
            details.forEach(function (detail) {
                document.getElementById(detail).classList.add('hidden');
            });

            // Show the next div based on the dropdown selection
            var dropdown = document.getElementById(dropdownId);
            var nextDiv = document.getElementById(nextDivId);
            if (dropdown.value) {
                nextDiv.classList.remove('hidden');
                var selectedDetailId = dropdown.value + 'Details';
                document.getElementById(selectedDetailId).classList.remove('hidden');
            } else {
                nextDiv.classList.add('hidden');
            }
        }

        function submitDetails() {
            var dropdown = document.getElementById('options');
            var selectedOption = dropdown.value;
            var userInput = '';
            if (selectedOption === 'name') {
                userInput = document.getElementById('nameInput').value;
            } else if (selectedOption === 'email') {
                userInput = document.getElementById('emailInput').value;
            } else if (selectedOption === 'contact') {
                userInput = document.getElementById('contactInput').value;
            }

            if (userInput) {
                document.getElementById('userDetailsContent').innerText = 'You entered: ' + userInput;
                document.getElementById('userDetails').classList.remove('hidden');
            } else {
                alert('Please enter a value.');
            }
        }
    </script>

</body>

</html>
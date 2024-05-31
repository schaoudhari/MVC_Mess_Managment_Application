<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f9;
            font-family: Arial, sans-serif;
            margin: 0;
        }

        .container {
            text-align: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
            font-size: 1.2em;
        }

        input[type="date"],
        select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            font-size: 1.3em;
            width: 100%;
            max-width: 300px;
            box-sizing: border-box;
        }

        input[type="submit"],
        button {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #5A2323;
            color: #fff;
            font-size: 1em;
            cursor: pointer;
            margin: 10px;
            width: 100%;
            max-width: 300px;
            box-sizing: border-box;
        }

        button {
            background-color: #5A2323;
        }

        input[type="submit"]:hover,
        button:hover {
            opacity: 0.9;
        }

        select {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-color: #fff;
            background-image: url('data:image/svg+xml;charset=US-ASCII,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 4 5"><path fill="%23ccc" d="M2 0L0 2h4zm0 5L0 3h4z"/></svg>');
            background-repeat: no-repeat;
            background-position: right 10px center;
            background-size: 12px 12px;
        }

        /* Fix for older versions of Internet Explorer */
        select::-ms-expand {
            display: none;
        }
    </style>
</head>

<body>
	<%@include file="userDashboard.jsp"%>
    <div class="container">
        <form action="markUserAttendance" method="get">
        	<input type="hidden" name="uid" id="" value="<%=userId %>" readonly>
            <label for="date">Today's Date</label><br>
            <input type="date" name="date" id="date" readonly><br>
            <select name="status" id="status">
            	<option value="">Present/Absent</option>
                <option value="Present" name="status">Present</option>
                <option value="Absent" name="status">Absent</option>
            </select><br>
            <input type="submit" value="Mark Attendance"><br>
            <button type="button">View Data</button>
        </form>
    </div>

    <script>
        let date = new Date();
        let formattedDate = date.toISOString().slice(0, 10); // Get YYYY-MM-DD format
        document.getElementById("date").value = formattedDate;
    </script>
</body>

</html>
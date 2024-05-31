<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Menu</title>
    <link rel="stylesheet" href="css/addMenu.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>

<body>
	<%@include file="MenuDashboard.jsp"%>
    <div class="mainbody">
        <div class="container form">
            <div class="contact_box">
                <div class="contact-left">
                    <h3>Add Today's Menu</h3>
                    <form action="menuController" method="post">
                        <div class="input-row">
                            <div class="input-group">
                                <label for="item1">Item-Name-1</label>
                                <input type="text" name="item1" id="" placeholder="Sukki Bhaji">
                            </div>
                            <div class="input-group">
                                <label for="item2">Item-name-2</label>
                                <input type="text" name="item2" id="" placeholder="Rassa Bhaji">
                            </div>
                        </div>
                        <div class="input-row">
                            <div class="input-group">
                                <label for="name">Item-name-3</label>
                                <input type="text" name="item3" id="" placeholder="Chapati/Bhakri">
                            </div>
                            <div class=" input-group">
                                <label for="name">Sweet</label>
                                <input type="text" name="sweets" id="" placeholder="Sweets Name">
                            </div>
                        </div>
                        <div class="input-row">
                            <div class="input-group">
                                <label for="name">Item-name-4</label>
                                <input type="text" name="item4" id="" placeholder="Rice">
                            </div>
                             <div class="input-group">
                                <label for="name">Date</label>
                                <input type="date" name="date" id="" placeholder="dd-mm-yyyy">
                            </div>
                        </div>

                        <button type="submit" id="button">Add Menu</button>
                    </form>
                </div>

            </div>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
</body>

</html>
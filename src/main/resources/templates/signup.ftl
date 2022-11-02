<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
        }

        input[type=email], input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 10px 0 10px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=email]:focus, input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        input[type=submit]:hover {
            opacity: 1;
        }

        .signupbtn {
            background: linear-gradient(to right, #f12711, #f5af19);
            border-radius: 5px;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
            opacity: 0.9;
            border: 1px solid darkred;
            width: 100%;
        }

        .container {
            padding: 5px 20px 20px 20px;
        }

        .modal {
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background: linear-gradient(to right, #f12711, #f5af19);
            padding-top: 30px;
            padding-right: 330px;
            padding-left: 330px;
        }

        .error {
            color: #D8000C;
            background-color: #FFBABA;
            width: 100%;
            padding: 15px;
            margin: 20px 0 22px 0;
            display: inline-block;
            border-radius: 5px;
        }

        .success {
            color: #4F8A10;
            background-color: #DFF2BF;
            width: 100%;
            padding: 15px;
            margin: 20px 0 22px 0;
            display: inline-block;
            border-radius: 5px;
        }

        .warning {
            color: #9F6000;
            background-color: #FEEFB3;
            width: 100%;
            padding: 15px;
            margin: 20px 0 22px 0;
            display: inline-block;
            border-radius: 5px;
        }

        .modal-content {
            background: linear-gradient(to right, #f12711, #f5af19);
            margin: 2% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: none;
            width: 60%; /* Could be more or less, depending on screen size */
        }

        hr {
            border: 1px solid #f1f1f1;
        }

        .rounded {
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="modal">
    <form method="post" class="modal-content rounded">
        <div class="container">
            <h1 style="text-align: center;">Sign Up</h1>
            <p style="text-align: center;">Please fill in this form to create an account.</p>
            <hr>

            <input type="email" placeholder="Enter Email" name="email" class="rounded" required>

            <input type="text" placeholder="Enter Name" name="name" class="rounded" required>

            <input type="text" placeholder="Enter Surname" name="surname" class="rounded" required>

            <input type="text" placeholder="Enter Status" name="status" class="rounded" required>

            <input type="password" placeholder="Enter Password" name="psw" class="rounded" minlength="5" required>

            <input type="password" placeholder="Repeat Password" name="psw-repeat" class="rounded" required>

            <input type="text" placeholder="Enter Url" name="url" class="rounded">

            <input type="submit" class="signupbtn" value="Sign Up"></input>
            ${message!''}
            <div style="text-align: center;">
                <a href="/login" style="text-decoration: none; color: darkred;">Sign in</a>
            </div>
        </div>
    </form>
</div>
</body>
</html>                                		                            
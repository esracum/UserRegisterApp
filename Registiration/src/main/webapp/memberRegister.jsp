<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Register</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 50%;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        text-align: center;
    }
    table {
        margin: auto;
    }
    table td {
        padding: 10px;
    }
    input[type="text"],
    input[type="password"] {
        width: 200px;
        padding: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    .error-message {
        color: red;
    }
    .success-message {
        color: green;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>User Register</h1>
        <form id="registration-form" action="C:\\Users\\windows\\Desktop\\eclipse\\Registiration\\build\\classes" method="post" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td><label for="uname">Name:</label></td>
                    <td><input type="text" id="uname" name="uname" placeholder="Enter your name"></td>
                </tr>
                <tr>
                    <td><label for="surname">Surname:</label></td>
                    <td><input type="text" id="surname" name="surname" placeholder="Enter your surname"></td>
                </tr>
                <tr>
                    <td><label for="email">Email:</label></td>
                    <td><input type="text" id="email" name="email" placeholder="Enter your email"></td>
                </tr>
                <tr>
                    <td><label for="password">Password:</label></td>
                    <td><input type="password" id="password" name="password" placeholder="Enter your password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Register"></td>
                </tr>
            </table>
        </form>
        <div id="error-message" class="error-message" style="display: none;">Please enter a valid email address.</div>
        <div id="success-message" class="success-message" style="display: none;">User successfully added!</div>
        <div id="user-details" style="display: none;">
            <h2>User Details:</h2>
            <p><strong>Name:</strong> <span id="user-name"></span></p>
            <p><strong>Surname:</strong> <span id="user-surname"></span></p>
            <p><strong>Email:</strong> <span id="user-email"></span></p>
        </div>
    </div>

    <script>
        function validateForm() {
            var email = document.getElementById("email").value;
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                document.getElementById("error-message").style.display = "block";
                document.getElementById("success-message").style.display = "none";
                return false;
            } else {
                document.getElementById("error-message").style.display = "none";
                document.getElementById("success-message").style.display = "block";
                showUserDetails(); // Kullanıcı detaylarını göster
                return true;
            }
        }

        function showUserDetails() {
            var name = document.getElementById("uname").value;
            var surname = document.getElementById("surname").value;
            var email = document.getElementById("email").value;

            document.getElementById("user-name").textContent = name;
            document.getElementById("user-surname").textContent = surname;
            document.getElementById("user-email").textContent = email;

            document.getElementById("user-details").style.display = "block"; // Kullanıcı detaylarını göster
        }
    </script>
</body>
</html>

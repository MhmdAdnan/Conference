<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member Management</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 8px;
            background: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #4a47a3;
        }

        .button-container {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        button {
            background-color: #4a47a3;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #373b7a;
        }

        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 10px;
        }

        input[type="text"]:focus {
            border-color: #4a47a3;
            outline: none;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            text-align: center;
            color: #4a47a3;
            text-decoration: none;
            font-size: 16px;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function redirectToAddMember() {
            window.location.href = 'add'; // Adjust the URL as needed
        }

        function showQRInput() {
            document.getElementById("qrReaderContainer").style.display = "block";
        }


    </script>
</head>
<body>
    <div class="container">
        <h1>Member Management</h1>
        <div class="button-container">
            <button onclick="redirectToAddMember()">Add Member</button>
            <button onclick="showQRInput()">Read Member</button>
        </div>

       <div id="qrReaderContainer" style="display:none; margin-top: 20px;">
           <form>
               <h2>Scan QR Code</h2>
               <input type="text" name="qrCode" id="qrCode" placeholder="Scan QR code here..." autofocus required />
               <button type="button" onclick="submitQRCode(event)" aria-label="Submit QR code">Submit</button>


                 <c:if test="${not empty message}">
                       <p style="color: red;">${message}</p>
                   </c:if>


                 <c:if test="${isValid}">
<script>
 function submitQRCode(event) {
            event.preventDefault(); // Prevent default form submission
            const qrCode = document.getElementById("qrCode").value;

            // Check if QR code is empty
            if (!qrCode.trim()) {
                document.getElementById("message").textContent = "Please scan a QR code before submitting.";
                return;
            }

            fetch('/scan', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ code: qrCode })
            })
            .then(response => response.json())
            .then(data => {

                    window.location.href = '/read?qrCode=' + encodeURIComponent(qrCode);

            })
            .catch(error => {
                console.error('Error:', error);
                document.getElementById("message").textContent = "An error occurred. Please try again.";
            });
        }

</script>
                    </c:if>

           </form>
       </div>

    </div>
</body>
</html>

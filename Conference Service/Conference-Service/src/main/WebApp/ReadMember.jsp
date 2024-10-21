<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px; /* Increased width */
            margin: auto;
            background: white;
            padding: 30px; /* Increased padding */
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"], input[type="tel"], input[type="email"], select {
            width: 100%;
            padding: 12px; /* Increased padding */
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .checkbox-group {
            margin: 10px 0;
        }
        input[type="checkbox"] {
            margin-right: 10px;
        }
        button {
            width: 100%;
            padding: 12px; /* Increased padding */
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Event Registration</h2>
    <form>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="mobile">Mobile Number:</label>
        <input type="tel" id="mobile" name="mobile" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="event-type">Event Type:</label>
        <select id="event-type" name="event-type" required>
            <option value="" disabled selected>Select an option</option>
            <option value="workshop">Workshop</option>
            <option value="conference">Conference</option>
            <option value="both">Workshop and Conference</option>
        </select>

        <div class="checkbox-group">
            <label><strong>Select Days:</strong></label>
            <label><input type="checkbox" name="day1"> Workshop /label>
            <label><input type="checkbox" name="day2"> Conference </label>

        </div>

        <button type="submit">Register</button>
    </form>
</div>

</body>
</html>

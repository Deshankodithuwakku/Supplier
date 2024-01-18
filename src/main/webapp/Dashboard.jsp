<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stock Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: white;
            padding: 1em;
            text-align: center;
        }

        section {
            margin: 20px;
        }

        .container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .card {
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 15px;
            flex: 1 1 300px;
            max-width: 300px;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 1em;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Stock Management System</h1>
    </header>

    <section>
        <div class="container">
            <div class="card">
                <h2>Stock Levels</h2>
                <!-- Add stock level information here -->
            </div>

            <div class="card">
                <h2>Recent Transactions</h2>
                <!-- Add recent transactions information here -->
            </div>

            <!-- Add more cards for additional sections -->
        </div>
    </section>

    <footer>
        <p>&copy; 2023 Stock Management System</p>
    </footer>
</body>
</html>
    
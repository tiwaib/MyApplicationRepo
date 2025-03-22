<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colorful Circles</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f8ff;
            overflow: hidden;
        }
        .circle {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            position: absolute;
            animation: float 4s infinite ease-in-out;
        }
        @keyframes float {
            0% { transform: translateY(0); opacity: 1; }
            50% { transform: translateY(-100px); opacity: 0.5; }
            100% { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>
<body>
    <script>
        function createCircle() {
            const circle = document.createElement('div');
            circle.classList.add('circle');
            document.body.appendChild(circle);
            
            const colors = ['#FF6B6B', '#6BFF95', '#6BCBFF', '#FFD166', '#D6A2E8'];
            const randomColor = colors[Math.floor(Math.random() * colors.length)];
            
            circle.style.backgroundColor = randomColor;
            circle.style.left = Math.random() * window.innerWidth + 'px';
            circle.style.top = Math.random() * window.innerHeight + 'px';
            
            setTimeout(() => {
                circle.remove();
            }, 4000);
        }
        
        setInterval(createCircle, 500);
    </script>
</body>
</html>



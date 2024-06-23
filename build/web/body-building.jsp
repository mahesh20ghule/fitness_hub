<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fitness Website</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
   <style>
      body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f5f5f5;
      color: #333;
      background: rgb(255,255,255);
      background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(54,56,128,1) 0%, rgba(130,130,189,1) 100%);
      background-size: cover;
      background-repeat: no-repeat;
    }
    .navbar {
      height: 80px;
    }
    .navbar-nav .nav-item .nav-link:not(.navbar-brand):hover {
      color: red;
    }
    .dropdown-menu {
      background-color: lightsalmon;
    }
    .dropdown-menu a:hover {
      background-color: lightsalmon;
      color: white;
      font-size: 20px;
    }
    .navbar-brand {
      font-family: 'Roboto', sans-serif;
      font-size: 30px;
    }
    h1 {
      text-align: center;
      margin-bottom: 20px;
    }
    h2 {
      margin-top: 20px;
      margin-bottom: 10px;
    }
    p {
      margin-bottom: 20px;
    }
    .day {
      background: rgb(94,68,111);
      background: linear-gradient(90deg, rgba(94,68,111,1) 0%, rgba(143,7,211,1) 0%, rgba(78,63,63,1) 100%, rgba(252,176,69,1) 100%);
      border-radius: 5px;
      padding: 20px;
      margin-bottom: 30px;
      color: white;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 2px 4px rgba(0, 0, 0, 0.08);
    }
    .summary {
      background: linear-gradient(135deg, #8a2387, #e94057, #f27121);
      border-radius: 5px;
      padding: 20px;
      margin-top: 30px;
      color: white;
      box-shadow: 0 2px 10px black;
    }
    .summary h2 {
      margin-bottom: 20px;
    }
    .summary p {
      font-size: 18px;
    }
  </style>
</head>
<body>
  <header class="bg-dark text-white">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand" href="index.jsp"> <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo"  height="40" width="50"  class="d-inline-block align-text-top"> Fitness-Hub</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end h" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Macro.jsp">Macro Calculator</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="routines.jsp">Routines</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp#about">About us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp#about">Contact us</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <% if (session.getAttribute("email") == null) { %>
                  Registration
                <% } else { %>
                  Account
                <% } %>
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <% if (session.getAttribute("email") == null) { %>
                  <li><a class="dropdown-item" href="login.jsp">Log In</a></li>
                  <li><a class="dropdown-item" href="sign.jsp">Sign up</a></li>
                <% } else { %>
                  <li><a class="dropdown-item" href="logout.jsp">Log Out</a></li>
                  <li><a class="dropdown-item" href="profile.jsp">Profile</a></li>
                <% } %>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
<div class="container">
  <h1 style="margin-top: 20px; color: #fff; margin-bottom: 30px;">7-Day Bodybuilding Nutrition Plan</h1>

 
  <div class="day">
    <h2>Day 1</h2>
    <p>Breakfast:</p>
    <ul>
      <li>Scrambled eggs (3 eggs) with whole grain toast (2 slices) and avocado (1/2)</li>
      <li>Protein: 20g, Carbs: 35g, Fat: 35g, Calories: 550 kcal</li>
    </ul>
    <p>Lunch:</p>
    <ul>
      <li>Grilled chicken sandwich with cheese and avocado on whole grain bread</li>
      <li>Protein: 35g, Carbs: 40g, Fat: 25g, Calories: 600 kcal</li>
    </ul>
    <p>Snack:</p>
    <ul>
      <li>Greek yogurt with granola and honey</li>
      <li>Protein: 15g, Carbs: 50g, Fat: 10g, Calories: 350 kcal</li>
    </ul>
    <p>Dinner:</p>
    <ul>
      <li>Salmon with quinoa and roasted vegetables</li>
      <li>Protein: 35g, Carbs: 40g, Fat: 20g, Calories: 600 kcal</li>
    </ul>
    <p>Total Protein: 105g, Total Carbs: 165g, Total Fat: 90g, Total Calories: 2100 kcal</p>
  </div>

  <div class="day">
  <h2>Day 2</h2>
  <p>Breakfast:</p>
  <ul>
    <li>Oatmeal with peanut butter, banana, and milk</li>
    <li>Protein: 15g, Carbs: 70g, Fat: 20g, Calories: 500 kcal</li>
  </ul>
  <p>Lunch:</p>
  <ul>
    <li>Turkey wrap with hummus and veggies</li>
    <li>Protein: 25g, Carbs: 40g, Fat: 15g, Calories: 450 kcal</li>
  </ul>
  <p>Snack:</p>
  <ul>
    <li>Protein smoothie with protein powder, almond milk, berries, and spinach</li>
    <li>Protein: 25g, Carbs: 30g, Fat: 5g, Calories: 300 kcal</li>
  </ul>
  <p>Dinner:</p>
  <ul>
    <li>Chicken stir-fry with brown rice and mixed vegetables</li>
    <li>Protein: 30g, Carbs: 45g, Fat: 15g, Calories: 550 kcal</li>
  </ul>
  <p>Total Protein: 95g, Total Carbs: 185g, Total Fat: 55g, Total Calories: 1800 kcal</p>
</div>
<div class="day">
  <h2>Day 3</h2>
  <p>Breakfast:</p>
  <ul>
    <li>Whole grain pancakes with Greek yogurt and maple syrup</li>
    <li>Protein: 20g, Carbs: 60g, Fat: 15g, Calories: 500 kcal</li>
  </ul>
  <p>Lunch:</p>
  <ul>
    <li>Chicken and avocado salad with mixed greens and olive oil dressing</li>
    <li>Protein: 30g, Carbs: 15g, Fat: 20g, Calories: 450 kcal</li>
  </ul>
  <p>Snack:</p>
  <ul>
    <li>Trail mix with nuts and dried fruit</li>
    <li>Protein: 10g, Carbs: 30g, Fat: 20g, Calories: 300 kcal</li>
  </ul>
  <p>Dinner:</p>
  <ul>
    <li>Spaghetti with meatballs and marinara sauce</li>
    <li>Protein: 30g, Carbs: 60g, Fat: 20g, Calories: 600 kcal</li>
  </ul>
  <p>Total Protein: 90g, Total Carbs: 165g, Total Fat: 70g, Total Calories: 1850 kcal</p>
</div>
<div class="day">
  <h2>Day 4</h2>
  <p>Breakfast:</p>
  <ul>
    <li>Smoothie with banana, peanut butter, protein powder, and milk</li>
    <li>Protein: 25g, Carbs: 45g, Fat: 20g, Calories: 500 kcal</li>
  </ul>
  <p>Lunch:</p>
  <ul>
    <li>Tuna salad sandwich on whole grain bread</li>
    <li>Protein: 30g, Carbs: 35g, Fat: 20g, Calories: 450 kcal</li>
  </ul>
  <p>Snack:</p>
  <ul>
    <li>Cottage cheese with pineapple chunks</li>
    <li>Protein: 15g, Carbs: 25g, Fat: 5g, Calories: 200 kcal</li>
  </ul>
  <p>Dinner:</p>
  <ul>
    <li>Grilled pork chops with mashed potatoes and green beans</li>
    <li>Protein: 35g, Carbs: 40g, Fat: 20g, Calories: 600 kcal</li>
  </ul>
  <p>Total Protein: 105g, Total Carbs: 145g, Total Fat: 65g, Total Calories: 1750 kcal</p>
</div>

<div class="day">
  <h2>Day 5</h2>
  <p>Breakfast:</p>
  <ul>
    <li>Egg and cheese breakfast burrito with avocado</li>
    <li>Protein: 25g, Carbs: 45g, Fat: 25g, Calories: 600 kcal</li>
  </ul>
  <p>Lunch:</p>
  <ul>
    <li>Quinoa bowl with black beans, corn, and grilled chicken</li>
    <li>Protein: 30g, Carbs: 50g, Fat: 10g, Calories: 500 kcal</li>
  </ul>
  <p>Snack:</p>
  <ul>
    <li>Apple with almond butter</li>
    <li>Protein: 4g, Carbs: 25g, Fat: 15g, Calories: 250 kcal</li>
  </ul>
  <p>Dinner:</p>
  <ul>
    <li>Shrimp and vegetable stir-fry with brown rice</li>
    <li>Protein: 30g, Carbs: 40g, Fat: 10g, Calories: 450 kcal</li>
  </ul>
  <p>Total Protein: 90g, Total Carbs: 160g, Total Fat: 60g, Total Calories: 1800 kcal</p>
</div>

<div class="day">
  <h2>Day 6</h2>
  <p>Breakfast:</p>
  <ul>
    <li>Whole grain toast with avocado and poached eggs</li>
    <li>Protein: 15g, Carbs: 30g, Fat: 20g, Calories: 350 kcal</li>
  </ul>
  <p>Lunch:</p>
  <ul>
    <li>Chicken Caesar salad with croutons and Parmesan cheese</li>
    <li>Protein: 35g, Carbs: 20g, Fat: 20g, Calories: 450 kcal</li>
  </ul>
  <p>Snack:</p>
  <ul>
    <li>Protein bar</li>
    <li>Protein: 20g, Carbs: 25g, Fat: 10g, Calories: 300 kcal</li>
  </ul>
  <p>Dinner:</p>
  <ul>
    <li>Grilled steak with sweet potato fries and a side salad</li>
    <li>Protein: 40g, Carbs: 45g, Fat: 20g, Calories: 650 kcal</li>
  </ul>
  <p>Total Protein: 110g, Total Carbs: 120g, Total Fat: 70g, Total Calories: 1750 kcal</p>
</div>
<div class="day">
  <h2>Day 7</h2>
  <p>Breakfast:</p>
  <ul>
    <li>Overnight oats with almond milk, chia seeds, and berries</li>
    <li>Protein: 15g, Carbs: 50g, Fat: 15g, Calories: 400 kcal</li>
  </ul>
  <p>Lunch:</p>
  <ul>
    <li>Beef and bean burrito with cheese and salsa</li>
    <li>Protein: 30g, Carbs: 50g, Fat: 20g, Calories: 600 kcal</li>
  </ul>
  <p>Snack:</p>
  <ul>
    <li>Smoothie with spinach, banana, protein powder, and almond milk</li>
    <li>Protein: 25g, Carbs: 30g, Fat: 5g, Calories: 300 kcal</li>
  </ul>
  <p>Dinner:</p>
  <ul>
    <li>Grilled chicken with roasted vegetables</li>
  <li>Protein: 35g, Carbs: 40g, Fat: 15g, Calories: 500 kcal</li>
</ul>
<p>Total Protein: 105g, Total Carbs: 170g, Total Fat: 55g, Total Calories: 1800 kcal</p>
</div>
</body>
</html>





</div>


</body>
</html>

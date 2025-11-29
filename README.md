# 🛒 PhoneFury – E-Commerce Website

> _A complete ASP.NET-based web application that allows users to browse, register, shop, and securely purchase mobile phones._

---

## 📌 Project Overview

PhoneFury is a **full-stack E-commerce website** built using **ASP.NET, SQL Server, HTML, CSS, and JavaScript**.  
The platform allows users to:

- 🔍 Browse smartphones  
- 🛒 Add items to cart  
- 🔐 Register & login securely  
- 👤 View & edit account information  
- 💳 Checkout using Visa / Mada / Cash on Delivery  

---

## 🧠 Table of Contents

| Section | Description |
|--------|-------------|
| 🔧 Introduction | Overview of the website |
| 🗄 SQL Tables | Database structure |
| 🔄 Stored Procedures | Backend logic |
| 🔗 Database Diagram | PK & FK relationships |
| 🧭 Master Page | Layout & navigation |
| 🏠 Home Page | Display available phones |
| ℹ About Page | Project details |
| 📞 Contact Page | User inquiry form |
| 📝 Registration Page | Sign up |
| 🔐 Login Page | Authentication |
| 👤 Account Info Page | View/update user data |
| 🛒 Shop-Cart Page | Add/remove items |
| 💳 Checkout Page | Payment functionality |

---

## 🛠 Tech Stack

| Layer | Technologies |
|------|------------------------------|
| Frontend | HTML, CSS, JavaScript |
| Backend | ASP.NET (C#) |
| Database | SQL Server |
| Libraries | jQuery |
| Validation | JavaScript + ASP.NET |
| Deployment | IIS / Localhost |
| Version Control | Git & GitHub |

---

## 🗄 SQL + Database Features

✔ Multiple **SQL tables** for users, products, orders  
✔ **Stored Procedures** for authentication, cart handling & checkout  
✔ **PK–FK relationships** using ER Diagram  
✔ Secure validation & form handling

### Example SQL Table

```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    PasswordHash NVARCHAR(255),
    ProfilePic NVARCHAR(255)
);
```
---

## 📸 Screenshots 

<table>
  <tr>
    <td align="center" style="padding: 10px;">
        <b>HomePage</b><br/>
      <img src="https://github.com/Rxpr0/PhoneFury-Ecommerce-/blob/main/HomePage.jpeg" width="100%" alt="Login Page" />
    </td>
    <td align="center" style="padding: 10px;">
         <b>Registration</b><br/>
      <img src="https://github.com/Rxpr0/PhoneFury-Ecommerce-/blob/main/Registration.jpeg" width="100%" alt="Main Dashboard" />
    </td>
  </tr>
  <tr>
    <td align="center" style="padding: 10px;">
        <b>LoginPage</b><br/>
      <img src="https://github.com/Rxpr0/PhoneFury-Ecommerce-/blob/main/Login.jpeg" width="100%" alt="Leaderboard" />
    </td>
      <td align="center" style="padding: 10px;">
          <b>User Information</b><br/>
      <img src="https://github.com/Rxpr0/PhoneFury-Ecommerce-/blob/main/UserInfo.jpeg" width="100%" alt="Live Match Stream" />
    </td>
  </tr>
    <tr>
    <td align="center" style="padding: 10px;">
        <b>Shopping Cart</b><br/>
      <img src="https://github.com/Rxpr0/PhoneFury-Ecommerce-/blob/main/Cart.jpeg" width="100%" alt="Live Match Stream" />
    </td>
    <td align="center" style="padding: 10px;">
         <b>Checkout</b><br/>
      <img src="https://github.com/Rxpr0/PhoneFury-Ecommerce-/blob/main/Checkout.jpeg" width="100%" alt="Leaderboard" />
    </td>
  </tr>
</table>

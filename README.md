# E-Commerce Database Design Project

This project is a comprehensive database design for an e-commerce platform, inspired by popular websites like **Amazon**, **Hepsiburada**, and **Trendyol**. The goal of the project is to create a unified database schema that can handle the complex requirements of multiple e-commerce platforms. The project involves extracting data requirements, designing EER (Enhanced Entity-Relationship) diagrams, and implementing the final schema in MySQL.

## Project Overview

The project consists of the following key phases:

1. **Data Requirements Analysis**:
   - We analyzed the data requirements of three major e-commerce platforms: **Amazon**, **Hepsiburada**, and **Trendyol**.
   - Identified common entities and attributes such as users, products, orders, wishlists, payments, and logistics.
   - Noted platform-specific features (e.g., Amazon's Prime membership, Trendyol's Dolap account, Hepsiburada's Hepsipay).

2. **EER Diagram Design**:
   - Created individual EER diagrams for each platform based on their specific requirements.
   - Combined the features of all three platforms into a unified EER diagram that covers all functionalities.

3. **Database Implementation**:
   - Translated the unified EER diagram into a relational schema.
   - Implemented the schema in **MySQL** to create a functional database.
   - Added sample data to test the database's functionality.

## Key Features of the Unified Database

The unified database schema is designed to handle the following features from all three platforms:

### User Management
- **Users** can be **customers**, **sellers**, or both.
- **Sellers** can be **independent** or **institutional**.
- **Customers** have unique accounts with personal information, payment methods, and wishlists.

### Product Management
- **Products** have unique IDs, descriptions, photos, and reviews.
- Products can be sold by multiple sellers with different prices and stock levels.
- Products are categorized, and categories can have subcategories.

### Order Management
- **Orders** include multiple order items and have a status, final price, and return options.
- Customers have a **shopping cart** that includes products from different shops.

### Wishlist Management
- **Wishlists** can be **public**, **private**, or **shared**.
- Public wishlists have **followers** and **views**, while shared wishlists have **collaborators**.

### Payment and Logistics
- **Payment methods** include credit cards, gift cards, and platform-specific systems like **Hepsipay**.
- **Logistics companies** handle order deliveries and can be **local** or **global**.

### Membership and Rewards
- Customers can have **Prime** or **Premium** memberships with exclusive benefits.
- Customers earn **points** for orders and reviews, which can lead to **Elite** membership status.

## Database Design Process

### 1. Data Requirements Analysis
We extracted the data requirements for each platform and identified common entities and attributes. For example:
- **Amazon**: Prime membership, independent/institutional sellers.
- **Hepsiburada**: Hepsipay, public/private wishlists.
- **Trendyol**: Dolap accounts, Trendyol Go shops, live video streaming.

### 2. EER Diagram Design
- Created individual EER diagrams for each platform.
- Combined the diagrams into a unified EER schema that covers all features.

### 3. Relational Schema and MySQL Implementation
- Translated the unified EER diagram into a relational schema.
- Implemented the schema in MySQL with tables for users, products, orders, wishlists, payments, and logistics.
- Added sample data to test the database's functionality.

## Database Schema

The final relational schema includes the following key tables:

- **SHOP**: Stores information about sellers.
- **CUSTOMER**: Stores information about customers.
- **PRODUCT**: Stores information about products.
- **ORDER**: Stores information about customer orders.
- **WISHLIST**: Stores information about customer wishlists.
- **PAYMENT_METHOD**: Stores information about payment methods.
- **LOGISTICS**: Stores information about order deliveries.

## How to Use

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/ecommerce-database-project.git
2. **Set Up the Database**:

    Use the provided SQL scripts to create the database schema in MySQL.

    Populate the database with sample data for testing.

3. **Run Queries**:

    Use SQL queries to interact with the database and test its functionality.


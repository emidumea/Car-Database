# **Car Dealership Management System**  

## **Project Description**  
The project aims to efficiently manage the operations of a car dealership, including **vehicle inventory, sales transactions, test drive scheduling, additional features, and customer details**. The application provides a structured **database-driven** approach to **visualizing and managing dealership activities**, reducing errors and ensuring **data integrity**.  

This system is designed to be **intuitive and balanced** between flexibility and complexity, utilizing well-defined **constraints** such as **primary keys, foreign keys, uniqueness, and type validations**. The database design follows **normalization principles** to **eliminate data redundancy** and optimize queries for **fast and secure data retrieval**.  

The project represents a **comprehensive solution** for dealership management, covering **vehicle administration, financial transactions, and customer interactions**. The structured **relational database** ensures **efficient data storage and manipulation**, maintaining both **integrity and accessibility**.  

---

## **Vehicle Management**  
The dealership maintains an inventory of **new and used vehicles**. Each vehicle is **registered in the database** with the following details:  

- **Brand and model**  
- **Year of manufacture**  
- **Fuel type** (gasoline, diesel)  
- **Price and condition** (new or second-hand)  

Additional data such as **mileage and maintenance history** are included, as these factors **influence vehicle pricing**. Vehicles can also have **customizable additional features**, such as:  

- **Rear cameras**  
- **Parking sensors**  
- **360° cameras**  
- **Panoramic sunroof**  

Each feature category contributes to **price adjustments**, providing a **dynamic pricing model** for each vehicle.  

---

## **Test Drive Management**  
A key functionality of the system is the **test drive scheduling module**, allowing customers to **book test drives** for available vehicles. The system enforces scheduling constraints, preventing **double-booking of the same vehicle** and ensuring **conflict-free appointments**.  

---

## **Vehicle Purchase Process**  
The purchasing process is well-defined, allowing customers to **buy vehicles outright** using multiple payment methods, including:  

- **Cash**  
- **Bank transfers**  
- **Financing options** (monthly installments with variable interest rates)  

The system ensures that each **vehicle can only be sold once**, enforcing **one-to-one constraints** between transactions and vehicles.  

---

## **Customer Management**  
Each customer is **registered with detailed personal information**, including:  

- **Full name**  
- **Identification document details** (serial and number)  
- **Address** (street, city)  
- **Phone number and email**  

These details are crucial for **identifying customers** and managing associated operations such as **purchases and test drives**. The system also provides a **comprehensive customer history**, enabling the dealership to **personalize the customer experience**.  

---

## **Transactions & Reporting**  
Sales transactions are a **core component** of the system, with each transaction recorded with:  

- **The purchased vehicle**  
- **The customer who made the purchase**  
- **Payment method**  
- **Financial details** (price, discounts, and special offers)  

The system also includes a **reporting module** that generates insights such as:  

- **Best-selling vehicle models**  
- **Most preferred payment methods**  
- **Financial performance analysis**  

These reports support **strategic decision-making** and help optimize the **dealership’s inventory management**.  

---

## **Technologies Used**  
- **Oracle SQL & PL/SQL** – Constraints, Triggers, Sequences, Indexes  
- **Entity-Relationship (ER) Modeling** – Chen Notation  
- **Data Normalization** – Reducing redundancy and optimizing queries  

This project delivers a **scalable, well-structured, and efficient** solution for **managing a car dealership’s operations**, ensuring **data accuracy, transaction security, and operational efficiency**. 🚗💨  

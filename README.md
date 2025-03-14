# Bank Management System

## Description

This project is a **Bank Management System** designed as a **university project** for the purpose of understanding and implementing database management and relational data modeling. The system simulates various banking operations such as employee management, customer account management, transactions, and other banking services.

Key features of the system include:

- Employee management (employee details, role assignments)
- Customer management (personal details, addresses, phone numbers)
- Account management (account types, balances, transaction history)
- E-banking services (online banking credentials)
- Card management (bank cards and PINs)
- Transaction history (details of customer account transactions)
  
The project utilizes a relational database structure with multiple tables linked through foreign key constraints to maintain data integrity and consistency.

---

## Database Structure

### Tables

The database consists of the following tables:

1. **Ipallilos**: Stores employee details such as name, position, and contact info.
2. **Pelatis**: Stores customer information, including personal data, address, phone numbers.
3. **Logariasmos**: Stores customer accounts, including type and balance information.
4. **Tilephona**: Stores customer phone numbers.
5. **Kinisi**: Records transaction history for each account.
6. **e_Banking**: Stores customer login credentials for online banking services.
7. **Karta**: Stores bank card information, including PIN and expiration dates.
8. **Eksipiretei**: Tracks interactions between employees and customers, such as service records.

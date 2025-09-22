-- PROJECT PROBLEMS WITH THEIR QUERY SOLUTIONS

-- Q1. Retrieve all the books in the Fiction genre
SELECT
	*
FROM
	BOOKS
WHERE
	GENRE = 'Fiction';


-- Q2. Find books published after the year 1950
SELECT
	*
FROM
	BOOKS
WHERE
	PUBLISHED_YEAR > 1950;


-- Q3. List all the customers from Canada
SELECT
	*
FROM
	CUSTOMERS
WHERE
	COUNTRY = 'Canada'


-- Q4. Show orders placed in November 2023
SELECT
	*
FROM
	ORDERS
WHERE
	ORDER_DATE BETWEEN '2023-11-01' AND '2023-11-30';


-- Q5. Retrieve the total stock of books available
SELECT
	SUM(STOCK) AS TOTAL_STOCK
FROM
	BOOKS;


-- Q6. Find the details of the most expensive book
SELECT
	*
FROM
	BOOKS
ORDER BY
	PRICE DESC
LIMIT
	1;


-- Q7. Show all customers who ordered more than 1 quantity of book
SELECT
	*
FROM
	ORDERS
WHERE
	QUANTITY > 1;


-- Q8. Retrieve all orders where the total amount exceeds $20
SELECT
	*
FROM
	ORDERS
WHERE
	TOTAL_AMOUNT > 20;


-- Q9. List all the genres available in the books table
SELECT DISTINCT
	GENRE
FROM
	BOOKS;


-- Q10. Find the book with the lowest stock
SELECT
	*
FROM
	BOOKS
ORDER BY
	STOCK ASC
LIMIT
	1;


-- Q11. Calculate total revenue generated from all orders
SELECT
	SUM(TOTAL_AMOUNT) AS REVENUE
FROM
	ORDERS;

--ADVANCE QUERY:

-- Q12. Retrieve total no of books sold for each genre
SELECT
	B.GENRE,
	SUM(O.QUANTITY) AS TOTAL_BOOKS_SOLD
FROM
	ORDERS O
	JOIN BOOKS B ON O.BOOK_ID = B.BOOK_ID
GROUP BY
	B.GENRE;


-- Q13. Find the average price of books in the Fantasy genre
Select AVG(price) as Average_Price
From books
Where Genre=’Fantasy’;


-- Q14. List of customers who placed at least 2 orders
SELECT
	CUSTOMER_ID,
	COUNT(ORDER_ID) AS ORDER_COUNT
FROM
	ORDERS
GROUP BY
	CUSTOMER_ID
HAVING
	COUNT(ORDER_ID) >= 2;


-- Q15. Find the most frequently ordered book
SELECT
	O.BOOK_ID,
	B.TITLE,
	COUNT(O.ORDER_ID) AS ORDER_COUNT
FROM
	ORDERS O
	JOIN BOOKS B ON O.BOOK_ID = B.BOOK_ID
GROUP BY
	O.BOOK_ID,
	B.TITLE
ORDER BY
	ORDER_COUNT DESC
LIMIT
	1;


-- Q16. Show the top 3 most expensive books of fantasy genre
Select * from books
Where genre=’fantasy’
Order by price desc limit 3;


-- Q17. Retrieve the total quantity of books sold by each author
SELECT
	B.AUTHOR,
	SUM(O.QUANTITY) AS TOTAL_BOOKS_SOLD
FROM
	ORDERS O
	JOIN BOOKS B ON O.BOOK_ID = B.BOOK_ID
GROUP BY
	B.AUTHOR;


--Q18. List the cities where customers who spent over $30 are located
SELECT DISTINCT
	C.CITY,
	TOTAL_AMOUNT
FROM
	ORDERS O
	JOIN CUSTOMERS C ON O.CUSTOMER_ID = C.CUSTOMER_ID
WHERE
	O.TOTAL_AMOUNT > 30;


-- Q19. Find the customers who spent the most on orders
SELECT
	C.CUSTOMER_ID,
	C.NAME SUM(O.TOTAL_AMOUNT) AS TOTAL_SPENT
FROM
	ORDERS O
	JOIN CUSTOMERS C ON O.CUSTOMER_ID = C.CUSTOMER_ID GROUP C.CUSTOMER_ID,
	C.NAME
ORDER BY
	TOTAL_SPENT DESC
LIMIT
	1;


-- Q20. Calculate the stock remaining after fulfilling all orders
SELECT
	B.BOOK_ID,
	B.TITLE,
	B.STOCK,
	COALESCE(SUM(O.QUANTITY), 0) AS ORDER_QUANTITY,
	B.STOCK - COALESCE(SUM(O.QUANTITY), 0) AS REMAINING_QUANTITY
FROM
	BOOKS B
	LEFT JOIN ORDERS O ON B.BOOK_ID = O.BOOK_ID
GROUP BY
	B.BOOK_ID
ORDER BY
	B.BOOK_ID;
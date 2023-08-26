CREATE DATABASE LibraryManagement ;


	/* ======================= TABLES ========================*/
    use LibraryManagement ;
    	CREATE TABLE tbl_publisher (
		publisher_PublisherName VARCHAR(100) PRIMARY KEY NOT NULL,
		publisher_PublisherAddress VARCHAR(200) NOT NULL,
		publisher_PublisherPhone VARCHAR(50) NOT NULL
	);
    
    
    CREATE TABLE tbl_book (
		book_BookID INT PRIMARY KEY NOT NULL ,
		book_Title VARCHAR(100) NOT NULL,
		book_PublisherName VARCHAR(100) NOT NULL);
        
        	CREATE TABLE tbl_library_branch (
		library_branch_BranchID INT PRIMARY KEY NOT NULL ,
		library_branch_BranchName VARCHAR(100) NOT NULL,
		library_branch_BranchAddress VARCHAR(200) NOT NULL
	);
    
    	-- SELECT * FROM tbl_library_branch;
        
        CREATE TABLE tbl_borrower (
		borrower_CardNo INT PRIMARY KEY NOT NULL ,
		borrower_BorrowerName VARCHAR(100) NOT NULL,
		borrower_BorrowerAddress VARCHAR(200) NOT NULL,
		borrower_BorrowerPhone VARCHAR(50) NOT NULL
	);
    
    
    -- SELECT * FROM tbl_borrower;
--     
    
    CREATE TABLE tbl_book_loans (
		book_loans_LoansID INT PRIMARY KEY NOT NULL ,
		book_loans_BookID INT NOT NULL ,
		book_loans_BranchID INT NOT NULL ,
		book_loans_CardNo INT NOT NULL,
		book_loans_DateOut VARCHAR(50) NOT NULL,
		book_loans_DueDate VARCHAR(50) NOT NULL
	);
    
    
    -- SELECT * FROM tbl_book_loans;
    
    
    	CREATE TABLE tbl_book_copies (
		book_copies_CopiesID INT PRIMARY KEY NOT NULL,
		book_copies_BookID INT NOT NULL ,
		book_copies_BranchID INT NOT NULL ,
		book_copies_No_Of_Copies INT NOT NULL
	);
    
    
    	-- SELECT * FROM tbl_book_copies;
        
        
        
		CREATE TABLE tbl_book_authors (
		book_authors_AuthorID INT PRIMARY KEY NOT NULL,
		book_authors_BookID INT NOT NULL ,
		book_authors_AuthorName VARCHAR(50) NOT NULL
	);

	-- SELECT * FROM tbl_book_authors;
    
    /*======================== END TABLES ======================*/
    
    
    
    /*==================== INSERT VALUES  INTO  TABLES======================*/
	
	
    
    INSERT INTO tbl_publisher
		(publisher_PublisherName, publisher_PublisherAddress, publisher_PublisherPhone)
		VALUES
		('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Chilton Books','Not Available','Not Available'),
		('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'),
		('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),		
		('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-5300'),
		('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','+81-3-5577-6507'),
		('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
		('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
		('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
		('W.W. Norton',' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
		('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
		('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745')		
	;

	 -- SELECT * FROM tbl_publisher;

	INSERT INTO tbl_book
		(book_BookID,book_Title, book_PublisherName)
		VALUES 
		(1,'The Name of the Wind', 'DAW Books'),
		(2,'It', 'Viking'),
		(3,'The Green Mile', 'Signet Books'),
		(4,'Dune', 'Chilton Books'),
		(5,'The Hobbit', 'George Allen & Unwin'),
		(6,'Eragon', 'Alfred A. Knopf'),
		(7,'A Wise Mans Fear', 'DAW Books'),
		(8,'Harry Potter and the Philosophers Stone', 'Bloomsbury'),
		(9,'Hard Boiled Wonderland and The End of the World', 'Shinchosa'),
		(10,'The Giving Tree', 'Harper and Row'),
		(11,'The Hitchhikers Guide to the Galaxy', 'Pan Books'),
		(12,'Brave New World', 'Chalto & Windus'),
		(13,'The Princess Bride', 'Harcourt Brace Jovanovich'),
		(14,'Fight Club', 'W.W. Norton'),
		(15,'Holes', 'Scholastic'),
		(16,'Harry Potter and the Chamber of Secrets', 'Bloomsbury'),
		(17,'Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),
		(18,'The Fellowship of the Ring', 'George Allen & Unwin'),
		(19,'A Game of Thrones', 'Bantam'),
		(20,'The Lost Tribe', 'Picador USA');


SELECT * FROM tbl_book WHERE book_PublisherName = 'George Allen & Unwin';

	
    INSERT INTO tbl_library_branch
		(library_branch_BranchID,library_branch_BranchName, library_branch_BranchAddress)
		VALUES
		(1,'Sharpstown','32 Corner Road, New York, NY 10012'),
		(2,'Central','491 3rd Street, New York, NY 10014'),
		(3,'Saline','40 State Street, Saline, MI 48176'),
		(4,'Ann Arbor','101 South University, Ann Arbor, MI 48104');
        
        
         SELECT * FROM tbl_library_branch;

	
    INSERT INTO tbl_borrower
		(borrower_CardNo,borrower_BorrowerName, borrower_BorrowerAddress, borrower_BorrowerPhone)
		VALUES
		(100,'Joe Smith','1321 4th Street, New York, NY 10014','212-312-1234'),
		(101,'Jane Smith','1321 4th Street, New York, NY 10014','212-931-4124'),
		(102,'Tom Li','981 Main Street, Ann Arbor, MI 48104','734-902-7455'),
		(103,'Angela Thompson','2212 Green Avenue, Ann Arbor, MI 48104','313-591-2122'),
		(104,'Harry Emnace','121 Park Drive, Ann Arbor, MI 48104','412-512-5522'),
		(105,'Tom Haverford','23 75th Street, New York, NY 10014','212-631-3418'),
		(106,'Haley Jackson','231 52nd Avenue New York, NY 10014','212-419-9935'),
		(107,'Michael Horford','653 Glen Avenue, Ann Arbor, MI 48104','734-998-1513');
	
	 SELECT * FROM tbl_borrower;
    
    
    INSERT INTO tbl_book_loans
		(book_loans_LoansID,book_loans_BookID, book_loans_BranchID, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate)
		VALUES
		(1,'1','1','100','1/1/18','2/2/18'),
		(2,'2','1','100','1/1/18','2/2/18'),
		(3,'3','1','100','1/1/18','2/2/18'),
		(4,'4','1','100','1/1/18','2/2/18'),
		(5,'5','1','102','1/3/18','2/3/18'),
		(6,'6','1','102','1/3/18','2/3/18'),
		(7,'7','1','102','1/3/18','2/3/18'),
		(8,'8','1','102','1/3/18','2/3/18'),
		(9,'9','1','102','1/3/18','2/3/18'),
		(10,'11','1','102','1/3/18','2/3/18'),
		(11,'12','2','105','12/12/17','1/12/18'),
		(12,'10','2','105','12/12/17','1/12/17'),
		(13,'20','2','105','2/3/18','3/3/18'),
		(14,'18','2','105','1/5/18','2/5/18'),
		(15,'19','2','105','1/5/18','2/5/18'),
		(16,'19','2','100','1/3/18','2/3/18'),
		(17,'11','2','106','1/7/18','2/7/18'),
		(18,'1','2','106','1/7/18','2/7/18'),
		(19,'2','2','100','1/7/18','2/7/18'),
		(20,'3','2','100','1/7/18','2/7/18'),
		(21,'5','2','105','12/12/17','1/12/18'),
		(22,'4','3','103','1/9/18','2/9/18'),
		(23,'7','3','102','1/3/18','2/3/18'),
		(24,'17','3','102','1/3/18','2/3/18'),
		(25,'16','3','104','1/3/18','2/3/18'),
		(26,'15','3','104','1/3/18','2/3/18'),
		(27,'15','3','107','1/3/18','2/3/18'),
		(28,'14','3','104','1/3/18','2/3/18'),
		(29,'13','3','107','1/3/18','2/3/18'),
		(30,'13','3','102','1/3/18','2/3/18'),
		(31,'19','3','102','12/12/17','1/12/18'),
		(32,'20','4','103','1/3/18','2/3/18'),
		(33,'1','4','102','1/12/18','2/12/18'),
		(34,'3','4','107','1/3/18','2/3/18'),
		(35,'18','4','107','1/3/18','2/3/18'),
		(36,'12','4','102','1/4/18','2/4/18'),
		(37,'11','4','103','1/15/18','2/15/18'),
		(38,'9','4','103','1/15/18','2/15/18'),
		(39,'7','4','107','1/1/18','2/2/18'),
		(40,'4','4','103','1/1/18','2/2/18'),
		(41,'1','4','103','2/2/17','3/2/18'),
		(42,'20','4','103','1/3/18','2/3/18'),
		(43,'1','4','102','1/12/18','2/12/18'),
		(44,'3','4','107','1/13/18','2/13/18'),
		(45,'18','4','107','1/13/18','2/13/18'),
		(46,'12','4','102','1/14/18','2/14/18'),
		(47,'11','4','103','1/15/18','2/15/18'),
		(48,'9','4','103','1/15/18','2/15/18'),
		(49,'7','4','107','1/19/18','2/19/18'),
		(50,'4','4','103','1/19/18','2/19/18'),
		(51,'1','4','103','1/22/18','2/22/18');

		
	SELECT * FROM tbl_book_loans;
    
    
   
    INSERT INTO tbl_book_copies
		(book_copies_CopiesID,book_copies_BookID, book_copies_BranchID, book_copies_No_Of_Copies)
		VALUES
		(1,'1','1','5'),
		(2,'2','1','5'),
		(3,'3','1','5'),
		(4,'4','1','5'),
		(5,'5','1','5'),
		(6,'6','1','5'),
		(7,'7','1','5'),
		(8,'8','1','5'),
		(9,'9','1','5'),
		(10,'10','1','5'),
		(11,'11','1','5'),
		(12,'12','1','5'),
		(13,'13','1','5'),
		(14,'14','1','5'),
		(15,'15','1','5'),
		(16,'16','1','5'),
		(17,'17','1','5'),
		(18,'18','1','5'),
		(19,'19','1','5'),
		(20,'20','1','5'),
		(21,'1','2','5'),
		(22,'2','2','5'),
		(23,'3','2','5'),
		(24,'4','2','5'),
		(25,'5','2','5'),
		(26,'6','2','5'),
		(27,'7','2','5'),
		(28,'8','2','5'),
		(29,'9','2','5'),
		(30,'10','2','5'),
		(31,'11','2','5'),
		(32,'12','2','5'),
		(33,'13','2','5'),
		(34,'14','2','5'),
		(35,'15','2','5'),
		(36,'16','2','5'),
		(37,'17','2','5'),
		(38,'18','2','5'),
		(39,'19','2','5'),
		(40,'20','2','5'),
		(41,'1','3','5'),
		(42,'2','3','5'),
		(43,'3','3','5'),
		(44,'4','3','5'),
		(45,'5','3','5'),
		(46,'6','3','5'),
		(47,'7','3','5'),
		(48,'8','3','5'),
		(49,'9','3','5'),
		(50,'10','3','5'),
		(51,'11','3','5'),
		(52,'12','3','5'),
		(53,'13','3','5'),
		(54,'14','3','5'),
		(55,'15','3','5'),
		(56,'16','3','5'),
		(57,'17','3','5'),
		(58,'18','3','5'),
		(59,'19','3','5'),
		(60,'20','3','5'),
		(61,'1','4','5'),
		(62,'2','4','5'),
		(63,'3','4','5'),
		(64,'4','4','5'),
		(65,'5','4','5'),
		(66,'6','4','5'),
		(67,'7','4','5'),
		(68,'8','4','5'),
		(69,'9','4','5'),
		(70,'10','4','5'),
		(71,'11','4','5'),
		(72,'12','4','5'),
		(73,'13','4','5'),
		(74,'14','4','5'),
		(75,'15','4','5'),
		(76,'16','4','5'),
		(77,'17','4','5'),
		(78,'18','4','5'),
		(79,'19','4','5'),
		(80,'20','4','5');

	 SELECT * FROM tbl_book_copies;
    
    
    	INSERT INTO tbl_book_authors
		(book_authors_AuthorID,book_authors_BookID,book_authors_AuthorName)
		VALUES
		(1,'1','Patrick Rothfuss'),
		(2,'2','Stephen King'),
		(3,'3','Stephen King'),
		(4,'4','Frank Herbert'),
		(5,'5','J.R.R. Tolkien'),
		(6,'6','Christopher Paolini'),
		(7,'6','Patrick Rothfuss'),
		(8,'8','J.K. Rowling'),
		(9,'9','Haruki Murakami'),
		(10,'10','Shel Silverstein'),
		(11,'11','Douglas Adams'),
		(12,'12','Aldous Huxley'),
		(13,'13','William Goldman'),
		(14,'14','Chuck Palahniuk'),
		(15,'15','Louis Sachar'),
		(16,'16','J.K. Rowling'),
		(17,'17','J.K. Rowling'),
		(18,'18','J.R.R. Tolkien'),
		(19,'19','George R.R. Martin'),
		(20,'20','Mark Lee');

	SELECT * FROM tbl_book_authors;
    
    /*============================== END POPULATING TABLES ==============================*/

    
    /* #1- How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */

use librarymanagement;

select t.book_title, c.book_copies_No_of_copies 
from tbl_book t
inner join tbl_book_copies c
on t.book_BookID =c.book_copies_BookID
inner join tbl_library_branch b
on b.library_branch_BranchID = c.book_copies_BranchID
where t.book_Title = 'The Lost Tribe' and b.library_branch_BranchName = 'Sharpstown';


#2- How many copies of the book titled "The Lost Tribe" are owned by each library branch? */

select t.book_title, c.book_copies_No_of_copies , c.book_copies_BranchID
from tbl_book t
 join tbl_book_copies c
on t.book_BookID =c.book_copies_BookID
 join tbl_library_branch b
on b.library_branch_BranchID = c.book_copies_BranchID
where t.book_Title = 'The Lost Tribe';


/* #3- Retrieve the names of all borrowers who do not have any books checked out. */

SELECT borrower_BorrowerName FROM tbl_borrower
	WHERE NOT EXISTS
		(SELECT * FROM tbl_book_loans
		WHERE book_loans_CardNo = borrower_CardNo);
        
        /* #4- For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
        retrieve the book title, the borrower's name, and the borrower's address.  */



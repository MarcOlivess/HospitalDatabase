# HospitalDatabase

This project is creating a database using MySQL and creating relevent queries, as found inside the respective folder
Project Goal: create a useful hospital database given requirements/parameters. 

## Creation process
firstly, given a list of parameters sketched out a preliminary EER diagram
![alt text](https://raw.githubusercontent.com/MarcOlivess/HospitalDatabase/main/Initial-EER-diagram.png)


Then after evaluating the diagram, created a schema was created with revised relations, assigning them planned values, and planing out the primary and foreign keys
![alt text](https://raw.githubusercontent.com/MarcOlivess/HospitalDatabase/main/reviewed-EER-diagram.png)

Finally, creation of the database in MySQL, and insertion of data for creating relevent queries.
found in the queries folder

## Query summaries 

1.  We check for medications given and instructions given to any one patient. 
2.  We look for the names of all the patients in the room 302, good for checking whats full or not
3.  We find the total payable for John Doe, can be applied for any patient
4.  Is a trigger for adding a patient into a room after they are added, it checks for a room not at capacity, and adds them into it
5.  Used in order to find out exactly how much the hospital should be getting from the
rooms they use for patients
6.  This is a trigger that can be used to update an order to a complete status after the alter the execution of a Medication dosage is given
7.  When a new patient is added, a health record is added if they do not have one yet which is possible as given by the promt 
8. patient to room assignments, useful for a receptionist who wants an overview of the rooms currently
occupied and any useful personal information if needed
9. Here is a view to check out what actions have been completed by employees, useful for a lead or supervisor trying to make sense of what a patient has been treated with over the course of their stay

![image](https://github.com/user-attachments/assets/fc36d2a0-aa30-48c5-b4b9-9ced32212996)

10. Looks for the total medications that have been given out, to track what has been used/usage rate
11. Checks for the numbers and names of nurses who have orders. Useful incase you need to contact one of them in the event something is needed
12. Checks what patients have been properly monitored and by who, in order to check if anyone is being over treated, or under treated.
13. Checks the names of patients who have received more than one type of medication
14. Checks the names and IDs of physicians who have given the most instructions to patients, useful to see who is doing the most, something that could be both good or bad, they could be just performing well, or being overworked.
15. Checks for patients who have stayed in high cap rooms. They might need to be transferred to a smaller room.
16. Total Medications Administered by Each Nurse
17. Average Stay Duration in Each Room


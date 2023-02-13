const connection = require('./config/connection');
const inq = require('inquirer');
const formTable = require('console.table');
const { default: inquirer } = require('inquirer');

//Creating a connect to my database
connection.connect((error) => 
{
    if (error){
        throw error;
    }
});

//Displaying Main Options
function showOptions(){
    inq
    .prompt([
        {
            type: 'list',
            message: 'Pick an option to edit or view the database!',
            name: 'dbChoice',
            choices: [
            'View all employees',
            'View all employees by department',
            'View all employees by manager',
            'Add employee',
            'Remove employee',
            'Update employee role', 
            'Update employee manager',
            'Exit'],
        }
    ])
    .then((response) => {
        console.log("You chose" + response.dbChoice)
        //Switch statement with data and functions for each choice
        //Each switch will call a function then show the menu again after it is finished
        //the quit/default wll exit app. 
        switch(response.dbChoice){
            case 'View all employees'{}
        }  

    });

}

//Can create the other functions outside of this

/* function showDepartmentList(){
    select * from department;
} */

/* function showEmployeeList(){
    select * from employee;
} */

/* function showRolesList(){
    select * from roles;
} */



function startApp(){
    showOptions();
}

startApp();
const connection = require('./config/connection');
const inq = require('inquirer');
//const formTable = require('console.table');

//Creating a connect to my database
connection.connect((error) => 
{
    if (error) console.log(error);
});

//Displaying Main Options
function showOptions(){
    inq.prompt([
        {
            type: 'list',
            message: 'Pick an option to edit or view the database!',
            name: 'dbChoice',
            choices: [
            'View all employees',
            'View all departments',
            'View all roles',
            'Add employee',
            'Add role',
            'Add department', 
            'Exit'],
        }
    ]).then((response) => {
        console.log("You chose" + response.dbChoice)
        //Switch statement with data and functions for each choice
        //Each switch will call a function then show the menu again after it is finished
        //the quit/default wll exit app. 
        switch(response.dbChoice){
            case 'View all employees': showEmployeeList();
            break;
            case 'View all departments': showDepartmentList();
            break;
            case 'View all roles': showRolesList();
            break;
            case 'Add employee': console.log("reached");//addEmployee();
            break;
            case 'Add role': console.log("reached");//addRole();
            break;
            case 'Add department': console.log("reached");//addDepartment();
            break;
            default: console.log("Exiting Interface!");
            break;
        }  

    });

}

//Can create the other functions outside of this

function showDepartmentList(){
    const sqlDepartment = "select * from department;"
    connection.query(sqlDepartment, (error, depData) =>{
        if (error) throw error;
        console.table(depData);
        showOptions();
    })
}

function showEmployeeList(){
    const sqlEmployee = "select * from employee;"
    connection.query(sqlEmployee, (error, empData) =>{
        if (error) throw error;
        console.table(empData);
        showOptions();
    })
}

function showRolesList(){
    const sqlRoles = "select * from roles;"
    connection.query(sqlRoles, (error, roleData) =>{
        if (error) throw error;
        console.table(roleData);
        showOptions();
    })
}



function startApp(){
    showOptions();
}

startApp();
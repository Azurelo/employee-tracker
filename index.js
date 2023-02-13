const connection = require('./config/connection');
const inq = require('inquirer');
const formTable = require('console.table');
const { default: inquirer } = require('inquirer');

connection.connect((error) => 
{
    if (error){
        throw error;
    }
});

function showOptions(){
    inquirer.prompt
    
}

function startApp(){

}

//startApp();
var mysql = require("mysql");
var inquirer = require('inquirer')

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Suzann!A27",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  makeTable();
});

var makeTable= function(){
  connection.query("SELECT * FROM products", function(err,results){
    if (err) throw err;
   
    console.table(results.map(function(product){
      delete product.item_id
      return product;
    }))
   
    promptCustomer(results);
  })
} ;


var promptCustomer = function(results){
  inquirer.prompt([{
    type:'input',
    name:'choice',
    message:"What is the id of what you would you like to purchase?"
  }, {
    type:"input",
    name:"quant",
    message:"How many would you like to buy?",
    validate: function(value){
      if(isNaN(value)==false){
        return true;
      } else {
        return false;
      }
      }

    }]). then(function(answer){
    var correct = false;
        correct=true;
        var productId=answer.choice;
        var quantities= answer.quant;
        connection.query("SELECT * from products WHERE id="+productId,function(err,results){
          if (err) throw err;
          var newQty = results[0].stock_quantity-quantities;
          var hasEnough = newQty >= 0;
          if(hasEnough){
            connection.query("UPDATE products SET stock_quantity='"+newQty+"' WHERE id='"+productId+"'", function(err1,res2){
              console.log("Your price is")
              console.log(results[0].price * +quantities)
            });
          }
          else { console.log("Not enough to sell") 
              promptCustomer()
        }
        makeTable()
        });
        })
  }




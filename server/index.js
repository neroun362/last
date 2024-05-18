const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
const PORT = 3307;
app.use(express.json());
app.use(cors());

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "carrent",
  });

  

  app.post("/registration", (req, res) => {
    const { firstName, lastName, phone, email, password } = req.body;

    db.query(
        "INSERT INTO users (firstName, lastName, email, phone, password) VALUES (?, ?, ?, ?, ?)",
        [firstName, lastName, email, phone, password],
        (err, result) => {
            if (err) {
                console.error("Error while registering user:", err);
                return res.status(500).send("Internal server error");
            }

            console.log("User registered successfully");
            return res.status(200).send("User registered successfully");
        }
    );
});


app.get("/cars", (req, res) => {
    db.query("SELECT * FROM cars", (err, result) => {
      if (err) {
        console.error("Error while fetching cars:", err);
        return res.status(500).send("Internal server error");
      }
  
      console.log("Cars data fetched successfully");
      return res.status(200).json(result);
    });
  });

app.post("/sendMessage", (req, res) => {
    const { name, email, question,} = req.body;

    db.query(
        "INSERT INTO messages  (name, email, question) VALUES (?, ?, ?)",
        [name, email, question],
        (err, result) => {
            if (err) {
                console.error("Error while question:", err);
                return res.status(500).send("Internal server error");
            }

            console.log("User question apply");
            return res.status(200).send("User question apply");
        }
    );
});














app.post("/login", (req, res) => {
    const phone = req.body.phone;
    const password = req.body.password;
    db.query(
        "SELECT * FROM users WHERE phone = ? AND password = ?",
        [phone, password],
        (err, result) => {
            if (err) {
                res.send({err: err});
            }

            if(result.length > 0){
                const user = {
                    user_id: result[0].user_id,
                    firstName: result[0].firstName,
                    role: result[0].role,
                                       
                };
                res.send(user);
            } else {
                res.send({message: "Wrong phone/password"});
            }       
        }
    );
});











  
  
  app.listen(PORT, () => {
    console.log(`Server is running on ${PORT}...`);
    db.connect((err) => {
      if (err) throw err;
  
      console.log("Database connected!");
    });
  });
  
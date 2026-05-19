const express = require("express");
const cors = require("cors");
const { exec } = require("child_process");

const app = express();
app.use(cors());
app.use(express.json());

app.post("/recommend", (req, res) => {

  const { purpose, climate, budget, duration, transport, crowd } = req.body;

  console.log(req.body);

  const query = `swipl -s ../travel_planning_system.pl -g "top_recommendation('${purpose}','${climate}','${budget}','${duration}','${transport}','${crowd}',D,S),write(D),write(' '),write(S)" -t halt`;

  console.log(query);

  exec(query, (error, stdout, stderr) => {

    console.log("STDOUT:", stdout);
    console.log("STDERR:", stderr);

    if (error) {
      console.log(error);
      return res.status(500).send("Prolog error");
    }

    if (!stdout.trim()) {
      return res.json({
        place: "No recommendation found",
        score: 0
      });
    }

    const [place, score] = stdout.trim().split(" ");

    res.json({ place, score });
  });

});

app.listen(5000, () => console.log("Server running on port 5000"));
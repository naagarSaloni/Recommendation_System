
const express = require("express");
const cors = require("cors");
const { exec } = require("child_process");

const app = express();

app.use(cors());
app.use(express.json());

app.post("/recommend", (req, res) => {

    const {
        purpose,
        climate,
        budget,
        duration,
        transport,
        crowd
    } = req.body;

    const query = `swipl -s ../travel_planning_system.pl -g "top_recommendation(${purpose},${climate},${budget},${duration},${transport},${crowd},D,S),estimated_cost(D,Cost),rating(D,Rating),best_season(D,Season),findall(A,activity(D,A),Activities),findall(H,hotel_type(D,H),Hotels),write(D),write('|'),write(S),write('|'),write(Cost),write('|'),write(Rating),write('|'),write(Season),write('|'),write(Activities),write('|'),write(Hotels)" -t halt`;

    console.log("Running Query:");
    console.log(query);

    exec(query, (error, stdout, stderr) => {

        if (error) {

            console.log("ERROR:");
            console.log(error);

            console.log("STDERR:");
            console.log(stderr);

            return res.status(500).json({
                error: "Prolog execution failed",
                details: stderr
            });
        }

        console.log("OUTPUT:");
        console.log(stdout);

        if (!stdout.trim()) {

            return res.json({
                place: "No recommendation found",
                score: 0
            });
        }

        const parts = stdout.trim().split("|");

        const result = {
            place: parts[0],
            score: parts[1],
            cost: parts[2],
            rating: parts[3],
            season: parts[4],
            activities: parts[5],
            hotels: parts[6]
        };

        res.json(result);

    });

});

app.listen(5000, () => {

    console.log("Server running on port 5000");

});


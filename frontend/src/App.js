
import './App.css';

import React, { useState } from "react";
import axios from "axios";
import "./App.css";

function App() {
  const [form, setForm] = useState({
    purpose: "",
    climate: "",
    budget: "",
    duration: "",
    transport: "",
    crowd: ""
  });

  const [result, setResult] = useState(null);

  const handleChange = (e) => {
    setForm({ ...form, [e.target.name]: e.target.value });
  };

  const handleSubmit = async () => {
    const res = await axios.post("http://localhost:5000/recommend", form);
    setResult(res.data);
  };

  return (
    <div className="container">
      <h1>🌍 Travel Recommender</h1>

      {["purpose","climate","budget","duration","transport","crowd"].map(field => (
        <input
          key={field}
          name={field}
          placeholder={field}
          onChange={handleChange}
        />
      ))}

      <button onClick={handleSubmit}>Get Recommendation</button>

      {result && (
        <div className="card">
          <h2>{result.place}</h2>
          <p>Score: {result.score}</p>
        </div>
      )}
    </div>
  );
}

export default App;
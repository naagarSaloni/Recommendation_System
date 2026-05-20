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

  const [loading, setLoading] = useState(false);

  const destinationImages = {

  goa:
    "https://images.unsplash.com/photo-1518509562904-1ea51d1e0d1b?q=80&w=1600",

  manali:
    "https://images.unsplash.com/photo-1626621341517-bbf3d9990a23?q=80&w=1600",

  rishikesh:
    "https://images.unsplash.com/photo-1593693411515-c20261bcad6e?q=80&w=1600",

  jaipur:
    "https://images.unsplash.com/photo-1599661046289-e31897846e41?q=80&w=1600",

  kerala:
    "https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?q=80&w=1600",

  ladakh:
    "https://images.unsplash.com/photo-1581793745862-99fde7fa73d2?q=80&w=1600",

  udaipur:
    "https://images.unsplash.com/photo-1571679654681-ba01b9e1e117?q=80&w=1600",

  shimla:
    "https://images.unsplash.com/photo-1622308644420-b20142dc993c?q=80&w=1600",

  darjeeling:
    "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?q=80&w=1600",

  andaman:
    "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=1600",

  agra:
    "https://images.unsplash.com/photo-1564507592333-c60657eea523?q=80&w=1600",

  varanasi:
    "https://images.unsplash.com/photo-1561361513-2d000a50f0dc?q=80&w=1600",

  meghalaya:
    "https://images.unsplash.com/photo-1627894483216-2138af692e32?q=80&w=1600",

  ooty:
    "https://images.unsplash.com/photo-1593693397690-362cb9666fc2?q=80&w=1600",

  srinagar:
    "https://images.unsplash.com/photo-1598091383021-15ddea10925d?q=80&w=1600",

  amritsar:
    "https://images.unsplash.com/photo-1609947017136-9daf32a5eb16?q=80&w=1600",

  coorg:
    "https://images.unsplash.com/photo-1635151239962-4b90f1c63f59?q=80&w=1600"

};

  const handleChange = (e) => {

    setForm({
      ...form,
      [e.target.name]: e.target.value
    });

  };

  const handleSubmit = async () => {

    try {

      setLoading(true);

      const res = await axios.post(
        "http://localhost:5000/recommend",
        form
      );

      setTimeout(() => {

        setResult(res.data);

        setLoading(false);

        setTimeout(() => {

          const section =
            document.getElementById("resultSection");

          if(section){

            section.scrollIntoView({
              behavior: "smooth",
              block: "start"
            });

          }

        }, 500);

      }, 2500);

    } catch (error) {

      console.log(error);

      setLoading(false);

      alert("Backend Error");

    }

  };

  return (

    <div className="main">

      {/* HERO SECTION */}

      <div className="hero">

        <div className="overlay">

          <h1>
            Discover Your Perfect Journey
          </h1>

          <p>
            Premium AI Powered Travel Recommendation System
          </p>

          <button
            className="heroBtn"
            onClick={() => {
              window.scrollTo({
                top: 700,
                behavior: "smooth"
              });
            }}
          >
            Explore Now
          </button>

        </div>

      </div>

      {/* MAIN CONTAINER */}

      <div className="container">

        {/* FORM */}

        <div className="glass">

          <h2>
            Plan Your Dream Trip
          </h2>

          <div className="form">

            <select
              name="purpose"
              onChange={handleChange}
            >
              <option value="">Purpose</option>
              <option value="honeymoon">Honeymoon</option>
              <option value="family">Family</option>
              <option value="adventure">Adventure</option>
              <option value="leisure">Leisure</option>
            </select>

            <select
              name="climate"
              onChange={handleChange}
            >
              <option value="">Climate</option>
              <option value="cold">Cold</option>
              <option value="pleasant">Pleasant</option>
              <option value="hot">Hot</option>
              <option value="tropical">Tropical</option>
            </select>

            <select
              name="budget"
              onChange={handleChange}
            >
              <option value="">Budget</option>
              <option value="low">Low</option>
              <option value="medium">Medium</option>
              <option value="high">High</option>
            </select>

            <select
              name="duration"
              onChange={handleChange}
            >
              <option value="">Duration</option>
              <option value="short">Short</option>
              <option value="medium">Medium</option>
              <option value="long">Long</option>
            </select>

            <select
              name="transport"
              onChange={handleChange}
            >
              <option value="">Transport</option>
              <option value="bus">Bus</option>
              <option value="train">Train</option>
              <option value="flight">Flight</option>
              <option value="car">Car</option>
            </select>

            <select
              name="crowd"
              onChange={handleChange}
            >
              <option value="">Crowd Preference</option>
              <option value="low">Low</option>
              <option value="medium">Medium</option>
              <option value="high">High</option>
            </select>

            <button onClick={handleSubmit}>
              Get AI Recommendation
            </button>

          </div>

        </div>

        {/* LOADER */}

        {loading && (

          <div className="loader">

            <div className="spinner"></div>

            <h2>
              AI is Planning Your Journey...
            </h2>

            <p>
              Finding destinations • Matching activities •
              Analyzing preferences
            </p>

          </div>

        )}

        {/* RESULT */}

        {result && !loading && (

          <div
            className="resultCard"
            id="resultSection"
          >

            {/* IMAGE */}

            <div className="resultImage">

              <img
                src={
                  destinationImages[result.place]
                  ||
                  "https://images.unsplash.com/photo-1507525428034-b723cf961d3e"
                }
                alt=""
              />

              <div className="imageOverlay">

                <h2>
                  {
                    result.place.charAt(0).toUpperCase() +
                    result.place.slice(1)
                  }
                </h2>

                <p>
                  AI Recommended Travel Destination
                </p>

              </div>

            </div>

            {/* CONTENT */}

            <div className="resultContent">

              {/* FIRST GRID */}

              <div className="premiumGrid">

                <div className="premiumBox">

                  <span>Match Score</span>

                  <h3>
                    {result.score}
                  </h3>

                </div>

                <div className="premiumBox">

                  <span>Estimated Cost</span>

                  <h3>
                    ₹ {result.cost}
                  </h3>

                </div>

                <div className="premiumBox">

                  <span>Rating</span>

                  <h3>
                    {result.rating}/10
                  </h3>

                </div>

              </div>

              {/* SECOND GRID */}

              <div className="premiumGrid secondGrid">

                <div className="premiumBox">

                  <span>Best Season</span>

                  <h3>
                    {result.season}
                  </h3>

                </div>

                {/* ACTIVITIES */}

                <div className="premiumBox largeBox">

                  <span>Top Activities</span>

                  <ul className="premiumList">

                    {result.activities
                      .replace("[", "")
                      .replace("]", "")
                      .split(",")
                      .map((item, index) => (

                        <li key={index}>
                          {item.replaceAll("_", " ")}
                        </li>

                    ))}

                  </ul>

                </div>

                {/* HOTELS */}

                <div className="premiumBox largeBox">

                  <span>Recommended Hotels</span>

                  <ul className="premiumList">

                    {result.hotels
                      .replace("[", "")
                      .replace("]", "")
                      .split(",")
                      .map((item, index) => (

                        <li key={index}>
                          {item.replaceAll("_", " ")}
                        </li>

                    ))}

                  </ul>

                </div>

              </div>

              {/* AI SUMMARY */}

              <div className="aiSummary">

                <h2>

                  Why {
                    result.place.charAt(0).toUpperCase() +
                    result.place.slice(1)
                  }?

                </h2>

                <p>

                  Based on your selected travel preferences,
                  our AI recommendation engine identified <strong>
  {
    result.place.charAt(0).toUpperCase() +
    result.place.slice(1)
  }
</strong> as the most suitable destination by analyzing
                  climate compatibility,
                  budget range,
                  travel duration,
                  transportation mode,
                  crowd preference,
                  seasonal suitability
                  and activity matching.

                </p>

              </div>

            </div>

          </div>

        )}

      </div>

    </div>

  );

}

export default App;

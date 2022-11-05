import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";

class Header extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      value: "R3dd1t",
    };
  }

  render() {
    return (
      <header>
        <div className="logo">
          <a href="/">R3dd1t</a>
        </div>
        <div className="communitiesList">
          <select name="communities" id="community-select">
            <option value="">--Communities--</option>
            <option value="hacking">Hacking</option>
            <option value="philosophy">Philosophy</option>
            <option value="psychology">Psychology</option>
          </select>
        </div>
        <div className="registration">
          <a href="/">Register</a>
        </div>
        <div className="login">
          <a href="/">Login</a>
        </div>
      </header>
    );
  }
}

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(<Header />);


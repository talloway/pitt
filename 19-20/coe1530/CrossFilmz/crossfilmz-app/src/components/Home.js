import React from "react";
import ListItem from "@material-ui/core/ListItem";
import ListItemIcon from "@material-ui/core/ListItemIcon";
import ListItemText from "@material-ui/core/ListItemText";
import HomeIcon from '@material-ui/icons/Home';
import svg from "../icons/netflix.svg";

import "../styles/icon.css";

class Home extends React.Component {
  render() {
    return (
      <ListItem
        button
        key={this.props.text}
        onClick={async () => {
          const requestOptions = {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              platforms: [""]
            })
          };
          console.log(requestOptions);
          const url = "http://127.0.0.1:5000/get_movies";
          const response = await fetch(url, requestOptions);
          const data = await response.json();
          this.props.updateMovies(data, this.props.text);
        }}
      >
        <ListItemIcon>
          <HomeIcon/>
        </ListItemIcon>
        <ListItemText primary={this.props.text} />
      </ListItem>
    );
  }
}

export default Home;

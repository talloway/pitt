import React from "react";
import Button from "@material-ui/core/Button";
import Menu from "@material-ui/core/Menu";
import MenuItem from "@material-ui/core/MenuItem";
import Avatar from "./Avatar";
import "../styles/logoutChoice.css";

class LoginIcon extends React.Component {
  state = {
    anchorEl: null,
    isSignedOn: false
  };
  handleClick = event => {
    this.setState({ anchorEl: event.currentTarget });
  };

  handleClose = () => {
    this.setState({ anchorEl: null });
  };
  getRatings = async () => {
    const url = "http://127.0.0.1:5000/get_user_ratings";
    const response = await fetch(url);
    const data = await response.json();
    this.props.updateMovies(data, this.props.text);
    this.handleClose();
  };

  render() {
    return (
      <div>
        <Button
          aria-controls="simple-menu"
          aria-haspopup="true"
          onClick={this.handleClick}
        >
          <Avatar></Avatar>
        </Button>
        <Menu
          id="simple-menu"
          anchorEl={this.state.anchorEl}
          keepMounted
          open={Boolean(this.state.anchorEl)}
          onClose={this.handleClose}
        >
          <MenuItem onClick={this.getRatings}>Profile</MenuItem>
          <MenuItem>
            <a className="logout" href="http://127.0.0.1:5000/logout">
              Logout
            </a>
          </MenuItem>
        </Menu>
      </div>
    );
  }
}

export default LoginIcon;

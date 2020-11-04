import React from "react";
import { withStyles } from "@material-ui/core/styles";
import Drawer from "@material-ui/core/Drawer";
import CssBaseline from "@material-ui/core/CssBaseline";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import List from "@material-ui/core/List";
import Divider from "@material-ui/core/Divider";
import Search from "./Search";
import Shelf from "./Shelf";
import LoginIcon from "./LoginIcon";
import ApiButton from "./ApiButton";
import Recommend from "./Recommend";
import RecommendPlatform from "./RecommendPlatform";
import Home from "./Home";

import NetflixSVG from "../icons/netflix.svg";
import AmazonSVG from "../icons/amazon.svg";
import HuluSVG from "../icons/hulu.svg";
import DisneySVG from "../icons/disney.svg";

const drawerWidth = 260;
const styles = theme => ({
  root: {
    display: "flex"
  },
  appBar: {
    zIndex: theme.zIndex.drawer + 1
  },
  drawer: {
    width: drawerWidth,
    flexShrink: 0
  },
  drawerPaper: {
    width: drawerWidth
  },
  drawerContainer: {
    overflow: "auto"
  },
  content: {
    flexGrow: 1,
    padding: theme.spacing(3)
  },
  title: {
    flexGrow: 1,
    padding: theme.spacing(0, 2, 0, 2)
  },
  home: {
    float: "right"
  }
});
class PermDrawer extends React.Component {
  state = {
    movies: [],
    source: ""
  };

  updateMovies = (dataFromChild, title) => {
    console.log(dataFromChild);
    console.log(title);
    this.setState({ movies: dataFromChild, source: title });
  };

  render() {
    const { classes } = this.props;
    return (
      <div className={classes.root}>
        <CssBaseline />
        <AppBar position="fixed" className={classes.appBar}>
          <Toolbar>
            <h1 className={classes.title}>CrossFilmz</h1>
            <h3 className={classes.title}>
              Rendering movies from : {this.state.source}
            </h3>
            <div className={classes.home}>
              <Home text="Home" updateMovies={this.updateMovies} />
            </div>
            <LoginIcon
              style={{ float: "right" }}
              updateMovies={this.updateMovies}
              text="My Ratings"
            />
          </Toolbar>
        </AppBar>
        <Drawer
          className={classes.drawer}
          variant="permanent"
          classes={{
            paper: classes.drawerPaper
          }}
          anchor="left"
        >
          <Toolbar />
          <div className={classes.drawerContainer} />
          <Divider />
          <List>
            <ApiButton
              text="Netflix"
              updateMovies={this.updateMovies}
              iconPath={NetflixSVG}
            />
            <ApiButton
              text="Amazon"
              updateMovies={this.updateMovies}
              iconPath={AmazonSVG}
            />
            <ApiButton
              text="Hulu"
              updateMovies={this.updateMovies}
              iconPath={HuluSVG}
            />
            <ApiButton
              text="Disney"
              updateMovies={this.updateMovies}
              iconPath={DisneySVG}
            />
          </List>
          <Divider />
          <List>
            <Recommend
              text="All Suggestions"
              updateMovies={this.updateMovies}
            />
            <RecommendPlatform
              text="Netflix Suggestions"
              platform="Netflix"
              updateMovies={this.updateMovies}
            />
            <RecommendPlatform
              text="Amazon Suggestions"
              platform="Amazon Instant Video"
              updateMovies={this.updateMovies}
            />
            <RecommendPlatform
              text="Hulu Suggestions"
              platform="Hulu"
              updateMovies={this.updateMovies}
            />
            <RecommendPlatform
              text="Disney+ Suggestions"
              platform="Disney+"
              updateMovies={this.updateMovies}
            />
          </List>
        </Drawer>
        <main className={classes.content}>
          <Toolbar />
          <Shelf movies_to_render={this.state.movies} />
        </main>
      </div>
    );
  }
}

export default withStyles(styles, { withTheme: true })(PermDrawer);

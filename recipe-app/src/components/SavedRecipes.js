import React, { useState, useEffect } from "react";
import { makeStyles } from "@material-ui/core/styles";
import Card from "@material-ui/core/Card";
import CardActionArea from "@material-ui/core/CardActionArea";
import CardActions from "@material-ui/core/CardActions";
import CardContent from "@material-ui/core/CardContent";
import CardMedia from "@material-ui/core/CardMedia";
import Button from "@material-ui/core/Button";
import Typography from "@material-ui/core/Typography";
import FavoriteBorderIcon from "@material-ui/icons/FavoriteBorder";
import Axios from "axios";
import { FacebookShareButton } from "react-share";
import { FacebookIcon } from "react-share";
import ReactToPrint from "react-to-print";
import Modal from "react-modal";
import axios from "axios";

require("dotenv").config();
const SPOONACULAR_API = process.env.REACT_APP_SPOONACULAR_API;

const useStyles = makeStyles({
  root: {
    maxWidth: 345
  },
  media: {
    height: 140
  }
});

export default function SavedRecipes() {
  const [recipes, setRecipes] = useState([]);
  const [isOpen, setIsOpen] = useState(false);

  const classes = useStyles();
  const [currentId, setCurrentId] = useState(null);

  Modal.setAppElement("#root");

  console.log("recipes current state: ", recipes);
  useEffect(() => {
    axios.get("/saved").then(response => {
      console.log("response: ", response.data);
      setRecipes(prev => {
        return [...prev, ...response.data];
      });
    });
  }, []);

  function closeModal() {
    setIsOpen(false);
  }

  const renderInfo = e => {
    e.preventDefault();
    console.log("CLIIICKED");
  };

  console.log("recipes: ", recipes);
  return (
    <>
      {recipes.map((recipe, index) => {
        return (
          <Card className={classes.root}>
            <CardActionArea>
              <CardContent>
                <CardMedia
                  key={index}
                  component="img"
                  className={classes.media}
                  image={recipe.picture}
                  title={recipe.recipe_name}
                />
              </CardContent>
            </CardActionArea>
            <Typography gutterBottom variant="h5" component="h2"></Typography>
            {recipe.recipe_name}
            <CardActions>
              <Button size="small" color="primary">
                <FavoriteBorderIcon />
              </Button>
              <button onClick={renderInfo}>View Recipe!</button>
            </CardActions>
          </Card>
        );
      })}
      <Modal isOpen={isOpen} onRequestClose={closeModal}>
        <div>
          <p>hello</p>
        </div>
      </Modal>
      ); );
    </>
  );
}

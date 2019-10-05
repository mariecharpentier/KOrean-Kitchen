<?php


class Recipes extends Database {


  public function listAllRecipes()
  {

      $sql = 'SELECT *
              FROM recipes';

      $recipes = $this->selectAll($sql);

  }
















}

?>

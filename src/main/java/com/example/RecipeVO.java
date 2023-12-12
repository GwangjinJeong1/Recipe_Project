package com.example;

import java.util.Date;

public class RecipeVO {
	private int seq;
	private String recipe_name;
	private String writer;
	private String category;
	private int recipe_level;
	private String ingredient;
	private String recipe_content;
	private String image;
	private Date regdate;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getRecipe_name() {
		return recipe_name;
	}

	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getRecipe_level() {
		return recipe_level;
	}

	public void setRecipe_level(int recipe_level) {
		this.recipe_level = recipe_level;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}

	public String getRecipe_content() {
		return recipe_content;
	}

	public void setRecipe_content(String recipe_content) {
		this.recipe_content = recipe_content;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}

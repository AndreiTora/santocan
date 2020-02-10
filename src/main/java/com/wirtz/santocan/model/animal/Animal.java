package com.wirtz.santocan.model.animal;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="ANIMAL")
public class Animal {
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long animalId;
	
	@NotEmpty
	@Column(name="NAME", nullable=false)
	private String name;
	
	@NotEmpty
	@Column(name="TYPE", nullable=false)
	private String type;
	
	@NotEmpty
	@Column(name="BREED", nullable=false)
	private String breed;
	@NotEmpty
	@Column(name="DESCRIPTION",nullable=false)
    private String description;
    private String imageUrl;

    
	public Animal() {
		super();
	}

	public Animal(String name, String type, String breed, String description, String imageUrl) {
		super();
		this.name = name;
		this.type = type;
		this.breed = breed;
		this.description = description;
		this.imageUrl = imageUrl;
	}


	public Long getAnimalId() {
		return animalId;
	}


	public void setAnimalId(Long animalId) {
		this.animalId = animalId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getBreed() {
		return breed;
	}


	public void setBreed(String breed) {
		this.breed = breed;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getImageUrl() {
		return imageUrl;
	}


	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	

}

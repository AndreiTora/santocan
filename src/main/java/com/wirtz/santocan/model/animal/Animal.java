package com.wirtz.santocan.model.animal;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="ANIMAL")
public class Animal {
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long animalId;
	private String name;
	private String type;
	private String breed;
    private String description;

    
	public Animal() {
		super();
	}
	

	public Animal(String name, String type, String breed, String description) {
		super();
		this.name = name;
		this.type = type;
		this.breed = breed;
		this.description = description;

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

}

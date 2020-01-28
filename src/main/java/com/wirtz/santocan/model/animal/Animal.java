package com.wirtz.santocan.model.animal;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Animal {
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private long animalId;
	private String name;
	private String type;
	private String breed;
    private String description;

	@Temporal(TemporalType.TIMESTAMP)
    private Date date;
    private boolean sterilized;

    
	public Animal() {
		super();
	}
	

	public Animal(String name, String type, String breed, String description, Date date, boolean sterilized) {
		super();
		this.name = name;
		this.type = type;
		this.breed = breed;
		this.description = description;
		this.date = date;
		this.sterilized = sterilized;
	}



	public long getAnimalId() {
		return animalId;
	}


	public void setAnimalId(long animalId) {
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


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public boolean isSterilized() {
		return sterilized;
	}


	public void setSterilized(boolean sterilized) {
		this.sterilized = sterilized;
	}

	
	

    
}

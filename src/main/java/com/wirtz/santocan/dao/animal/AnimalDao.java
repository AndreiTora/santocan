package com.wirtz.santocan.dao.animal;

import java.util.List;

import com.wirtz.santocan.model.animal.Animal;

public interface AnimalDao {
	List<Animal> findAllAnimals();
	void save(Animal animal);
}

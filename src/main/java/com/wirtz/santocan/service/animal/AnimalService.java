package com.wirtz.santocan.service.animal;

import java.util.List;

import com.wirtz.santocan.model.animal.Animal;

public interface AnimalService {
	List<Animal> findAllAnimals();
	void save(Animal animal);
}

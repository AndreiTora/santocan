package com.wirtz.santocan.service.animal;

import java.util.List;
import com.wirtz.santocan.model.animal.Animal;

public interface AnimalService {
	
	Animal findById(Long id);
	List<Animal> findAllAnimals();
	void save(Animal animal);
	void update(Animal animal);
	void deleteAnimalById(Long animalId);
}


package com.wirtz.santocan.service.animal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wirtz.santocan.dao.animal.AnimalDao;
import com.wirtz.santocan.model.animal.Animal;
import com.wirtz.santocan.model.user.User;

@Service("animalService")
@Transactional
public class AnimalServiceImpl implements AnimalService {
	
	@Autowired
	AnimalDao dao;

	@Override
	public List<Animal> findAllAnimals() {
		// TODO Auto-generated method stub
		return dao.findAllAnimals();
	}

	@Override
	public void save(Animal animal) {
		dao.save(animal);

	}

	@Override
	public void update(Animal animal) {
		Animal entity = dao.findById(animal.getAnimalId());
		
			entity.setName(animal.getName());
			entity.setType(animal.getType());
			entity.setBreed(animal.getBreed());
			entity.setDescription(animal.getDescription());
		
		
	}

	@Override
	public Animal findById(Long id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public void deleteAnimalById(Long animalId) {
		dao.deleteById(animalId);
		
	}

}

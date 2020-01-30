package com.wirtz.santocan.service.animal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wirtz.santocan.dao.animal.AnimalDao;
import com.wirtz.santocan.model.animal.Animal;

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

}

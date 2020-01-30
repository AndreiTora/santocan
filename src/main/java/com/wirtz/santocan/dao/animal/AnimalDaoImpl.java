package com.wirtz.santocan.dao.animal;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

import com.wirtz.santocan.dao.AbstractDao;
import com.wirtz.santocan.model.animal.Animal;
import com.wirtz.santocan.model.user.User;

@Repository("animalDao")
public class AnimalDaoImpl extends AbstractDao<Long, Animal> implements AnimalDao {

	@Override
	public List<Animal> findAllAnimals() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("name"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Animal> animals = (List<Animal>) criteria.list();
		return animals;
	}

	@Override
	public void save(Animal animal) {
		
		persist(animal);

	}

}

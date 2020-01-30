package com.wirtz.santocan.dao.animal;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
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

	@Override
	public Animal findById(Long id) {

			Animal animal = getByKey(id);
			
			return animal;
		
	}

	@Override
	public void deleteById(Long animalId) {
		
			Criteria crit = createEntityCriteria();
			crit.add(Restrictions.eq("animalId", animalId));
			Animal animal = (Animal)crit.uniqueResult();
			delete(animal);
		
		
	}

}

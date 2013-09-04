package br.com.arizona.dao.jpa;

import br.com.arizona.model.BasicEntity;

import org.springframework.dao.DataAccessException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

public abstract class GenericDAOJpa<T extends BasicEntity, ID extends Serializable> implements br.com.arizona.dao.GenericDAO<T, ID> {

    private Class<T> persistentClass;

    @PersistenceContext
    private EntityManager entityManager;

    @SuppressWarnings("unchecked")
	public GenericDAOJpa() {
        this.persistentClass = (Class<T>) ((ParameterizedType) getClass()
                .getGenericSuperclass()).getActualTypeArguments()[0];
    }

    public T findById(ID id) throws DataAccessException {

        T provider = entityManager.find(persistentClass, id);

        return provider;

    }

    public List<T> findAll() {

        TypedQuery<T> query = entityManager.createQuery("from " + persistentClass.getName(), persistentClass);

        return query.getResultList();

    }

    public void update(T entity) {
        entityManager.merge(entity);
    }

    public void delete(T entity) {
        T deteleEntity = entityManager.merge(entity);

        entityManager.remove(deteleEntity);
    }

    public void save(T entity) {
        entityManager.persist(entity);
    }
}

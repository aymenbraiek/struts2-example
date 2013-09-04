/**
 * 
 */
package br.com.arizona.service;

import br.com.arizona.dao.GenericDAO;
import br.com.arizona.model.BasicEntity;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

public abstract class GenericServiceImpl<T extends BasicEntity, ID extends Serializable, D extends GenericDAO<T, ID>> implements GenericService<T, ID, D> {

    public abstract D dao();

	public T findById(ID id) {
		return dao().findById(id);
	}

	public List<T> findAll() {
		return dao().findAll() ;
	}


	@Transactional
	public void update(T entity) {
        dao().update(entity);
	}


	@Transactional
	public void delete(T entity) {
        dao().delete(entity);
	}

	@Transactional
	public void save(T entity) {
        dao().save(entity);
	}

}

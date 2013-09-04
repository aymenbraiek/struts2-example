package br.com.arizona.service;

import br.com.arizona.dao.GenericDAO;
import br.com.arizona.model.BasicEntity;

import java.io.Serializable;
import java.util.List;

public interface GenericService<T extends BasicEntity, ID extends Serializable, D extends GenericDAO<T, ID>> {

	public T findById(ID id);
	
	public List<T> findAll();

	public void update(T person);

	public void delete(T person);
	
	public void save(T person);

}

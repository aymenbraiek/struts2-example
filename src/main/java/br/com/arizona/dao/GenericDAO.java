package br.com.arizona.dao;

import br.com.arizona.model.BasicEntity;

import java.io.Serializable;
import java.util.List;

public interface GenericDAO<T extends BasicEntity, ID extends Serializable> {

	public T findById(ID id);

	public List<T> findAll();

	public void update(T entity);

	public void delete(T entity);

	public void save(T entity);

}

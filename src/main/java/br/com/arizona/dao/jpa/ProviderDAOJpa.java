package br.com.arizona.dao.jpa;

import org.springframework.stereotype.Repository;

import br.com.arizona.dao.ProviderDAO;
import br.com.arizona.model.Provider;

@Repository
public class ProviderDAOJpa extends GenericDAOJpa<Provider, Long> implements ProviderDAO {
}

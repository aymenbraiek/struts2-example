/**
 * 
 */
package br.com.arizona.service;

import br.com.arizona.dao.ProviderDAO;
import br.com.arizona.model.Provider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProviderServiceImpl extends GenericServiceImpl<Provider, Long, ProviderDAO> implements ProviderService {

    @Autowired
    private ProviderDAO dao;

    public ProviderDAO dao() {
        return dao;
    }
}

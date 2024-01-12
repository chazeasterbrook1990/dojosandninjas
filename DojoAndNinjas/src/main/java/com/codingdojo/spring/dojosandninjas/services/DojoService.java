package com.codingdojo.spring.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.spring.dojosandninjas.models.Dojo;
import com.codingdojo.spring.dojosandninjas.models.Ninja;
import com.codingdojo.spring.dojosandninjas.repositories.DojoRepository;
import com.codingdojo.spring.dojosandninjas.repositories.NinjaRepository;

@Service
public class DojoService {
	private final DojoRepository dojoRepository;
	
	private final NinjaRepository ninjaRepository;
	
	public DojoService (DojoRepository dojoRepository, NinjaRepository ninjaRepository) {
		this.dojoRepository = dojoRepository;
		this.ninjaRepository = ninjaRepository;
	}
	
	//all
	public List<Dojo> findAll() {
		return dojoRepository.findAll();
	}
	
	//create
	public Dojo createDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
	}
	
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepository.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	
}

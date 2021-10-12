package com.OdkApprenant.demo;

import com.OdkApprenant.demo.model.Apprenant;
import com.OdkApprenant.demo.model.ApprenantStatut;
import com.OdkApprenant.demo.repositories.ApprenantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.Date;

@SpringBootApplication
public class OdkApprenantsApplication {

	@Autowired
	private ApprenantRepository apprenantRepository;

	public static void main(String[] args) {
		SpringApplication.run(OdkApprenantsApplication.class, args);
	}

	@Bean
	CommandLineRunner start(ApprenantRepository apprenantRepository){
		return args -> {
			apprenantRepository.save(new Apprenant("Diarra" ,"Saoudatou",24,565, "sassia@gmail.com",
					"Sassi", "abc","femme", ApprenantStatut.ACTIVE, new Date(), new Date()));

			apprenantRepository.save(new Apprenant("fatou" ,"diagouraga",24,6788, "fatou@gmail.com",
					"fatou", "abc","Femme", ApprenantStatut.ACTIVE, new Date(), new Date()));
			apprenantRepository.save(new Apprenant("Sanogo" ,"Ibrahima",26,75906885, "ibrahimsanogo@gmail.com",
					"IB", "azerty","Homme", ApprenantStatut.DESACTIVE, new Date(), new Date()));
			apprenantRepository.findAll().forEach(apprenant -> {
				System.out.println(apprenant.toString());
			});
		};
	}
	
		


}

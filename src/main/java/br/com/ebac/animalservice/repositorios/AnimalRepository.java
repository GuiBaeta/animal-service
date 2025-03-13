package br.com.ebac.animalservice.repositorios;

import br.com.ebac.animalservice.entidades.Animal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AnimalRepository extends JpaRepository<Animal, Integer> {

    @Query("SELECT a FROM Animal a Where a.dataAdocao IS NULL ORDER BY a.dataEntrada")
    List<Animal> findNotAdopted();

    @Query("SELECT a FROM Animal a Where a.dataAdocao IS NOT NULL")
    List<Animal> findAdopted();

    @Query("SELECT a FROM Animal a Where a.especie = 'CACHORRO'")
    List<Animal> findDogs();

    @Query("SELECT a FROM Animal a Where a.especie = 'GATO'")
    List<Animal> findCats();

}

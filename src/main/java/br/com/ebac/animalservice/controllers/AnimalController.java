package br.com.ebac.animalservice.controllers;

import br.com.ebac.animalservice.entidades.Animal;
import br.com.ebac.animalservice.repositorios.AnimalRepository;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/animais")
public class AnimalController {

    private AnimalRepository repository;

    public AnimalController(AnimalRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    private List<Animal> findAll() {
        return repository.findAll();
    }

    @PostMapping
    private Animal create(@RequestBody Animal animal) {
        return repository.save(animal);
    }

    @GetMapping("/not-adopted")
    private List<Animal> findNotAdopted() {
        return repository.findNotAdopted();
    }

    @GetMapping("/adopted")
    private List<Animal> findAdopted() {
        return repository.findAdopted();
    }

    @GetMapping("/dogs")
    private List<Animal> findDogs() {
        return repository.findDogs();
    }

    @GetMapping("/cats")
    private List<Animal> findCats() {
        return repository.findCats();
    }

    @GetMapping("/rescue-count")
    private List<Map<String, Object>> getAnimalRescueCount(@RequestParam LocalDate startDate) {

        LocalDate endDate = startDate.plusYears(1);

        List<Object[]> results = repository.findAnimalCountByRecebedorAndDateRange(startDate, endDate);

        return results.stream()
                .map(result -> {
                    Map<String, Object> map = new HashMap<>();
                    map.put("recebedor", result[0]);
                    map.put("count", result[1]);
                    return map;
                })
                .collect(Collectors.toList());
    }
}

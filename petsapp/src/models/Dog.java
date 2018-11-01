package models;

public class Dog extends Animal implements Pet {
    public Dog(String name, String breed, int weight) {
        this.name = name;
        this.breed = breed;
        this.weight = weight;
    }

    @Override
    public String showAffection() {
        if((int) this.weight > 30) {
            return "dog hop in ur lap";
        }
        else if((int) this.weight < 30) {
            return "dog curl next 2 u";
        }
        return null;
    }
}

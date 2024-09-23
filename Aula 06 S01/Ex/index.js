class Animal {
    constructor(nome, idade, especie) {
        this.nome = nome;
        this.idade = idade;
        this.especie = especie;
    }

    printInfo() {
        return `Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}`;
    }
}

class Cachorro extends Animal {
    #raca;

    constructor(nome, idade, especie, raca) {
        super(nome, idade, especie);
        this.#raca = raca;
    }

    printInfo() {
        return `${super.printInfo()}, Raça: ${this.#raca}`;
    }
}

class Gato extends Animal {
    constructor(nome, idade, especie, cores) {
        super(nome, idade, especie);
        this.cores = cores;
    }

    printInfo() {
        return `${super.printInfo()}, Cores: ${this.cores.join(', ')}`;
    }
}

let animal = new Animal("Simba", 0, "Leão");
let cachorro = new Cachorro("Scooby Doo", 7, "Cachorro", "Dogue Alemão");
let gato = new Gato("Tom", 11, "Gato", ["Preto", "Branco"]);

console.log(animal.printInfo());
console.log(cachorro.printInfo());
console.log(gato.printInfo());

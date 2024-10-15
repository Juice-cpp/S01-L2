using System;

// Classe base Cachorro
class Cachorro
{
    public string Nome { get; set; }
    public int Idade { get; set; }

    public Cachorro(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public void mostrarNome()
    {
        Console.WriteLine("O nome do cachorro é: " + Nome);
    }

    public virtual void mostrarIdade()
    {
        Console.WriteLine("A idade do cachorro é: " + Idade);
    }
}

// Classe derivada CachorroGrande
class CachorroGrande : Cachorro
{
    private string tamanho;

    public CachorroGrande(string nome, int idade, string tamanho): base(nome, idade)
    {
        this.tamanho = tamanho;
    }

    public override void mostrarIdade()
    {
        Console.WriteLine("A idade do cachorro grande é: " + Idade);
    }
}

// Classe derivada CachorroPequeno
class CachorroPequeno : Cachorro
{
    public CachorroPequeno(string nome, int idade): base(nome, idade)
    {
    }

    public override void mostrarIdade()
    {
        Console.WriteLine("A idade do cachorro pequeno é: " + Idade);
    }
}

class Program
{
    // Função para chamar os métodos
    static void MostrarDetalhes(Cachorro cachorro)
    {
        cachorro.mostrarNome();
        cachorro.mostrarIdade();
    }

    static void Main(string[] args)
    {
        // Criando os objetos
        Cachorro cachorro1 = new Cachorro("Rex", 5);
        CachorroPequeno cachorroPequeno = new CachorroPequeno("Bolinha", 3);
        CachorroGrande cachorroGrande = new CachorroGrande("Max", 7, "Grande");

        // Imprimindo os métodos e atributos de cada classe
        MostrarDetalhes(cachorro1);
        Console.WriteLine();

        MostrarDetalhes(cachorroPequeno);
        Console.WriteLine();

        MostrarDetalhes(cachorroGrande);
    }
}

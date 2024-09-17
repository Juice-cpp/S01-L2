#include <iostream>

using namespace std;

class Pessoa
{
public:
	string nome;
	int idade;

	void fNome()
	{
		cout << "Meu nome eh " << nome << endl;
	}
};

class Professor : public Pessoa
{
public:

	void fIdade()
	{
		cout << "Sou professor, e tenho " << idade << " anos." << endl;
	}
};

class Aluno : public Pessoa
{
private:
	int matricula;

public:

	void fIdade()
	{
		cout << "Sou aluno, e tenho " << idade << " anos." << endl;
	}

	Aluno(int matricula)
	{
		this->matricula = matricula;
	}
};

int main()
{
	Aluno aluno(454);
	Professor professor;
	Pessoa pessoa;

	aluno.nome = "Enzo Gabriel";
	aluno.idade = 18;

	professor.nome = "Evaldo";
	professor.idade = 47;

	pessoa.nome = "Fulano";
	pessoa.idade = 69;

	aluno.fNome();
	aluno.fIdade();
	
	cout << endl;
	
	professor.fNome();
	professor.fIdade();
	
	cout << endl;
	
	pessoa.fNome();

	return 0;
}

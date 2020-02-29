String usuario = """
{
"nome": "Bruno",
"email": "bruno.santos@ifpi.edu.br",
"idade": 21,
"telefone": 995913247,
"profissao":"Estudante"
}""";

String estudante = """
{
"nome": "Pedro",
"email": "pedro.pedro@gmail.com",
"curso":"Biologia",
"notas":[10, 9.5, 8, 7]
}""";


String batJson = """{
    "familias": {
        "Emballorunidae": {
            "generos1": {
                "Centronycteris": {
                    "especies": [
                        "Desmodus rotundus"
                    ]
                },
                "Cormura": {
                    "especies": [
                        "Desmodus rotundus"
                    ]
                }
            }
        },
        "Mormoopidae": {
            "generos2": {
                "Pteronotus": {
                    "especies": [
                        "Desmodus rotundus"
                    ]
                }
            }
        }
    }
}
""";

const request = "https://api.hgbrasil.com/finance?format=json&key=c1e69041";
const resquest2 = 'https://jsonplaceholder.typicode.com/todos/1';
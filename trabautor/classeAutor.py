from datetime import datetime
import psycopg2

class Autor:
    def __init__(self,nome,email,cod):

        self._nome = nome
        self._email = email
        self._cod = cod

    
    def _get_nome(self):
        return self._nome
    
    def _get_email(self):
        return self._email

    def _get_id(self):
        return self._cod
    
    def _set_nome(self, nome):
        self._nome = nome
    
    def _set_email(self, email):
        self._email = email
    
    def _set_cod(self, cod):
        self._cod = cod

    nome = property(_get_nome,_set_nome)
    email = property(_get_email,_set_email)
    cod = property(_get_cod,_set_cod)




class Trabalho:
    def __init__(self,cod,conteudo,nota,dataEntrega,titulo,dataHoraAtualizacao):

        self._nome = cod
        self._email = conteudo
        self._cod = nota
        self._cod = dataEntrega
        self._cod = titulo
        self._cod = dataHoraAtualização
    

    def _get_cod(self):
        return self._cod
    
    def _get_conteudo(self):
        return self._nome



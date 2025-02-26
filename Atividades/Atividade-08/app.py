import mysql.connector
from mysql.connector import Error
from datetime import date

def create_connection():
    """Cria uma conexão com o banco de dados MySQL."""
    connection = None
    try:
        connection = mysql.connector.connect(
            host='192.168.0.18',
            port='3306',
            user='root',
            password='root',
            database='mydatabase'
        )
        print("Conexão com o MySQL bem-sucedida")
    except Error as e:
        print(f"Erro '{e}' ocorreu")

    return connection

def create_cliente(connection, id, nomeCliente, contatoSobrenome, contatoPrimeiroNome, telefone, LinhaEndereco1, LinhaEndereco2, cidade, estado, codigoPostal, pais, numeroFuncionarioVendas_id, limiteCredito):
    """Insere um novo cliente na tabela TB_CLIENTES."""
    cursor = connection.cursor()
    query = "INSERT INTO TB_CLIENTES (id, nomeCliente, contatoSobrenome, contatoPrimeiroNome, telefone, LinhaEndereço1, LinhaEndereço2, cidade, estado, codigoPostal, país, numeroFuncionarioVendas_id, limiteCredito) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (id, nomeCliente, contatoSobrenome, contatoPrimeiroNome, telefone, LinhaEndereco1, LinhaEndereco2, cidade, estado, codigoPostal, pais, numeroFuncionarioVendas_id, limiteCredito))
    connection.commit()
    print("Cliente adicionado com sucesso")

def create_detalhes_pedidos(connection, id, codigoProduto_id, quantidadePedida, cadaPreco, numeroLinhaPedido):
    """Insere um novo detalhes de pedido na tabela TB_DETALHES_PEDIDOS."""
    cursor = connection.cursor()
    query = "INSERT INTO TB_DETALHES_PEDIDOS (id, codigoProduto_id, quantidadePedida, cadaPreço, numeroLinhaPedido) VALUES (%s, %s, %s, %s, %s)"
    cursor.execute(query, (id, codigoProduto_id, quantidadePedida, cadaPreco, numeroLinhaPedido))
    connection.commit()
    print("Detalhes de Pedido adicionado com sucesso")

def create_escritorio(connection, id, cidade, telefone, LinhaEndereco1, LinhaEndereco2, estado, pais, codigoPostal, territorio):
    """Insere um novo escritório na tabela TB_ESCRITORIOS."""
    cursor = connection.cursor()
    query = "INSERT INTO TB_ESCRITORIOS (id, cidade, telefone, linhaEndereço1, linhaEndereço2, estado, país, codigoPostal, territorio) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (id, cidade, telefone, LinhaEndereco1, LinhaEndereco2, estado, pais, codigoPostal, territorio))
    connection.commit()
    print("Escritório adicionado com sucesso")

def create_funcionario(connection, id, codigoEscritorio_id, nome, sobrenome, extenção, email, relatarPara_id, cargo):
    """Insere um novo funcionário na tabela TB_FUNCIONARIOS."""
    cursor = connection.cursor()
    query = "INSERT INTO TB_FUNCIONARIOS (id, codigoEscritorio_id, nome, sobrenome, extenção, email, relatarPara_id, cargo) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (id, codigoEscritorio_id, nome, sobrenome, extenção, email, relatarPara_id, cargo))
    connection.commit()
    print("Funcionário adicionado com sucesso")

def create_linha_produtos(connection, id, descriçãoTexto, descriçãoHTML, image):
    """Insere uma nova linha de produto na tabela TB_LINHA_PRODUTOS."""
    cursor = connection.cursor()
    query = "INSERT INTO TB_LINHA_PRODUTOS (id, descriçãoTexto, descriçãoHTML, image) VALUES (%s, %s, %s, %s)"
    cursor.execute(query, (id, descriçãoTexto, descriçãoHTML, image))
    connection.commit()
    print("Linha_Produtos adicionado com sucesso")

def create_pagamento(connection, id, numeroCliente_id, dataPagamento, quantia):
    """Insere um novo pagamento na tabela TB_PAGAMENTOS."""
    cursor = connection.cursor()
    query = "INSERT INTO TB_PAGAMENTOS (id, numeroCliente_id, dataPagamento, quantia) VALUES (%s, %s, %s, %s)"
    cursor.execute(query, (id, numeroCliente_id, dataPagamento, quantia))
    connection.commit()
    print("Pagamento adicionado com sucesso")

def create_pedido(connection, id, dataPedido, dataRequerida, dataEnvio, status, comentarios, numeroCliente_id):
    """Insere um novo pedido na tabela TB_PEDIDOS."""
    cursor = connection.cursor()
    query = "INSERT INTO TB_PEDIDOS (id, dataPedido, dataRequerida, dataEnvio, status, comentarios, numeroCliente_id) VALUES (%s, %s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (id, dataPedido, dataRequerida, dataEnvio, status, comentarios, numeroCliente_id))
    connection.commit()
    print("Pedido adicionado com sucesso")

def create_produto(connection, id, nomeProduto, linhaProduto_id, escalaProduto, fornecedorProduto, descricaoProduto, quantidadeEstoque, precoCompra, MSRP):
    """Insere um novo produto na tabela TB_PRODUTOS."""
    cursor = connection.cursor()
    query = "INSERT INTO TB_PRODUTOS (id, nomeProduto, linhaProduto_id, escalaProduto, fornecedorProduto, descriçãoProduto, quantidadeEstoque, preçoCompra, MSRP) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (id, nomeProduto, linhaProduto_id, escalaProduto, fornecedorProduto, descricaoProduto, quantidadeEstoque, precoCompra, MSRP))
    connection.commit()
    print("Produto adicionado com sucesso")

def read_clientes(connection):
    """Lê todos os clientes da tabela TB_CLIENTES."""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_CLIENTES")
    clientes = cursor.fetchall()
    for cliente in clientes:
        print(cliente)

def read_produtos(connection):
    """Lê todos os clientes da tabela TB_PRODUTOS"""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_PRODUTOS")
    clientes = cursor.fetchall()
    for cliente in clientes:
        print(cliente)

def read_pedidos(connection):
    """Lê todos os clientes da tabela TB_PEDIDOS"""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_PEDIDOS")
    clientes = cursor.fetchall()
    for cliente in clientes:
        print(cliente)

def read_pagamentos(connection):
    """Lê todos os clientes da tabela TB_PAGAMENTOS"""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_PAGAMENTOS")
    clientes = cursor.fetchall()
    for cliente in clientes:
        print(cliente)

def read_linha_produtos(connection):
    """Lê todos os clientes da tabela TB_LINHA_PRODUTOS"""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_LINHA_PRODUTOS")
    clientes = cursor.fetchall()
    for cliente in clientes:
        print(cliente)

def read_funcionarios(connection):
    """Lê todos os clientes da tabela TB_FUNCIONARIOS"""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_FUNCIONARIOS")
    clientes = cursor.fetchall()
    for cliente in clientes:
        print(cliente)

def read_detalhes_pedidos(connection):
    """Lê todos os clientes da tabela TB_DETALHES_PEDIDOS"""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_DETALHES_PEDIDOS")
    clientes = cursor.fetchall()
    for cliente in clientes:
        print(cliente)

def read_escritorios(connection):
    """Lê todos os clientes da tabela TB_ESCRITORIOS."""
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM TB_ESCRITORIOS")
    clientes = cursor.fetchall()
    for cliente in clientes:
        print(cliente)

def update_cliente(connection, id, telefone):
    """Atualiza um cliente existente na tabela TB_CLIENTES."""
    cursor = connection.cursor()
    query = "UPDATE TB_CLIENTES SET telefone = %s WHERE id = %s"
    cursor.execute(query, (telefone, id))
    connection.commit()
    print("Cliente atualizado com sucesso")

def update_detalhes_pedido(connection, id, quantidadePedida):
    """Atualiza um detalhe de pedido existente na tabela TB_DETALHES_PEDIDOS."""
    cursor = connection.cursor()
    query = "UPDATE TB_DETALHES_PEDIDOS SET quantidadePedida = %s WHERE id = %s"
    cursor.execute(query, (quantidadePedida, id))
    connection.commit()
    print("Detalhes do pedido atualizado com sucesso")

def update_escritorio(connection, id, telefone):
    """Atualiza um escritório existente na tabela TB_ESCRITORIOS."""
    cursor = connection.cursor()
    query = "UPDATE TB_ESCRITORIOS SET telefone = %s WHERE id = %s"
    cursor.execute(query, (telefone, id))
    connection.commit()
    print("Escritório atualizado com sucesso")

def update_funcionario(connection, id, email):
    """Atualiza um funcionário existente na tabela TB_FUNCIONARIOS."""
    cursor = connection.cursor()
    query = "UPDATE TB_FUNCIONARIOS SET email = %s WHERE id = %s"
    cursor.execute(query, (email, id))
    connection.commit()
    print("Funcionário atualizado com sucesso")

def update_linha_produto(connection, id, descricao):
    """Atualiza um linha de produto existente na tabela TB_LINHA_PRODUTOS."""
    cursor = connection.cursor()
    query = "UPDATE TB_LINHA_PRODUTOS SET descriçãoTexto = %s WHERE id = %s"
    cursor.execute(query, (descricao, id))
    connection.commit()
    print("Linha de Produto atualizado com sucesso")

def update_pagamentos(connection, id, dataPagamento):
    """Atualiza um pagamento existente na tabela TB_PAGAMENTOS."""  
    cursor = connection.cursor()
    query = "UPDATE TB_PAGAMENTOS SET dataPagamento = %s WHERE id = %s"
    cursor.execute(query, (dataPagamento, id))
    connection.commit()
    print("Pagamento atualizado com sucesso")

def update_pedidos(connection, id, status):
    """Atualiza um pedido existente na tabela TB_PEDIDOS."""  
    cursor = connection.cursor()
    query = "UPDATE TB_PEDIDOS SET status = %s WHERE id = %s"
    cursor.execute(query, (status, id))
    connection.commit()
    print("Pedido atualizado com sucesso")

def update_produtos(connection, id, preco):
    """Atualiza um produto existente na tabela TB_PRODUTOS."""  
    cursor = connection.cursor()
    query = "UPDATE TB_PRODUTOS SET preçoCompra = %s WHERE id = %s"
    cursor.execute(query, (preco, id))
    connection.commit()
    print("Produto atualizado com sucesso")

def delete_cliente(connection, cliente_id):
    """Deleta um cliente da tabela TB_CLIENTES."""
    cursor = connection.cursor()
    query = "DELETE FROM TB_CLIENTES WHERE id = %s"
    cursor.execute(query, (cliente_id,))
    connection.commit()
    print("Cliente deletado com sucesso")

def delete_linha_produto(connection, cliente_id):
    """Deleta um cliente da tabela TB_LINHA_PRODUTOS"""
    cursor = connection.cursor()
    query = "DELETE FROM TB_LINHA_PRODUTOS WHERE id = %s"
    cursor.execute(query, (cliente_id,))
    connection.commit()
    print("Linha de produto deletado com sucesso")

def delete_detalhes_pedidos(connection, cliente_id):
    """Deleta um cliente da tabela TB_DETALHES_PEDIDOS"""
    cursor = connection.cursor()
    query = "DELETE FROM TB_DETALHES_PEDIDOS WHERE id = %s"
    cursor.execute(query, (cliente_id,))
    connection.commit()
    print("Cliente deletado com sucesso")

def delete_escritorios(connection, cliente_id):
    """Deleta um cliente da tabela TB_ESCRITORIOS"""
    cursor = connection.cursor()
    query = "DELETE FROM TB_ESCRITORIOS WHERE id = %s"
    cursor.execute(query, (cliente_id,))
    connection.commit()
    print("Cliente deletado com sucesso")

def delete_funcionarios(connection, cliente_id):
    """Deleta um cliente da tabela TB_FUNCIONARIOS"""
    cursor = connection.cursor()
    query = "DELETE FROM TB_FUNCIONARIOS WHERE id = %s"
    cursor.execute(query, (cliente_id,))
    connection.commit()
    print("Cliente deletado com sucesso")

def delete_pagamentos(connection, cliente_id):
    """Deleta um cliente da tabela TB_PAGAMENTOS"""
    cursor = connection.cursor()
    query = "DELETE FROM TB_PAGAMENTOS WHERE id = %s"
    cursor.execute(query, (cliente_id,))
    connection.commit()
    print("Cliente deletado com sucesso")

def delete_pedidos(connection, cliente_id):
    """Deleta um cliente da tabela TB_PEDIDOS"""
    cursor = connection.cursor()
    query = "DELETE FROM TB_PEDIDOS WHERE id = %s"
    cursor.execute(query, (cliente_id,))
    connection.commit()
    print("Cliente deletado com sucesso")

def delete_produtos(connection, cliente_id):
    """Deleta um cliente da tabela TB_PRODUTOS"""
    cursor = connection.cursor()
    query = "DELETE FROM TB_PRODUTOS WHERE id = %s"
    cursor.execute(query, (cliente_id,))
    connection.commit()
    print("Cliente deletado com sucesso")

def main():
    connection = create_connection()
    if connection is None:
        return

    # Exemplo de uso das funções CRUD
    create_escritorio(connection, 1, "Fortaleza", "85912345678", "Av. 13 de maio, 530", None, "Ceará", "Brasil", 60110101, "Siqueira")
    create_linha_produtos(connection, 1, "Joias raras", None, None)
    create_funcionario(connection, 1, 1, "sara", "silva", None, "sara.silva09@aluno.ifce.edu.br", None, "Designer chefe")
    create_produto(connection, 1, "Pulseira Cristal", 1, None, "EUA", "Pulseira", 245, 500, 80,)
    create_cliente(connection, 1, "brenno", "silva", "brenno", "85998765432", "Av. Beira-Mar, 1500", None, "Fortaleza", "Ceará", 48288970, "Brasil", 1, 200)
    create_pagamento(connection, 1,1, date(2025, 2, 24), 70)
    create_pedido(connection, 1, date(2025, 2, 24), date(2025, 3, 5), date(2025, 2, 24), "preparando pedido", None, 1)
    create_detalhes_pedidos(connection, 1, 1, 2, 70, 1)

    read_clientes(connection)
    read_escritorios(connection)
    read_detalhes_pedidos(connection)
    read_funcionarios(connection)
    read_linha_produtos(connection)
    read_pagamentos(connection)
    read_pedidos(connection)
    read_produtos(connection)

    update_escritorio(connection, 1, "85912345677")
    update_linha_produto(connection, 1,"Pulseira Prata")
    update_funcionario(connection, 1, "brenno.silva@aluno.ifce.edu.br")
    update_produtos(connection, 1, 70 )
    update_cliente(connection, 1, "85912345677")
    update_pagamentos(connection, 1, date(2025, 2, 24))
    update_pedidos(connection, 1, "entregue")
    update_detalhes_pedido(connection, 1, 1) 

    delete_detalhes_pedidos(connection, 1)
    delete_pedidos(connection, 1)
    delete_pagamentos(connection, 1)
    delete_cliente(connection, 1)
    delete_produtos(connection, 1)
    delete_funcionarios(connection, 1)
    delete_linha_produto(connection, 1)
    delete_escritorios(connection, 1)
    
    

    connection.close()

if __name__ == "__main__":
    main()

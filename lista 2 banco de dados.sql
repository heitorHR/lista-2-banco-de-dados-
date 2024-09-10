/* Exercício 1:
Escreva uma consulta SQL que recupere todos os pedidos juntamente com
o nome e o email dos clientes que fizeram esses pedidos. Utilize INNER
JOIN para combinar as tabelas de pedidos e clientes*/
select pedidos.pedido_id,
pedidos.data_pedido,
pedido.total.pedidos.status,
clientes.nome,
clientes.email
from pedidos
inner join clientes on pedidos.cliente_id =
clientes.clientes_id

/*2. Sistema de Gestão de Relacionamento com o Cliente (CRM)
1. Exercício 1:
Crie uma consulta que recupere todos os clientes e as interações que eles
tiveram. Utilize LEFT JOIN para incluir todos os clientes, mesmo aqueles
sem interações*/

select clientes.cliente_id,cliente.nome
clientes.email,clientes.telofone,
clientes.endereço
interacoes.interacao_id, interacoes.tipo,
interacoes.data_interacao,interacoes.datalhes
from clientes 
left join interacoes on clientes.clientes_id= interacoes.cliente_id;

/*3. Finanças e Controle Orçamentário
1. Exercício 1:
Escreva uma consulta que liste todas as transações junto com o nome da
conta associada a cada transação.
 Utilize INNER JOIN para combinar as
tabelas de transações e contas.*/
 select transacoens.transacoes_id.
 transacoes.tipo, transacoes.valor,
 transacoes.data_transacao,
 transacoes.descrisao ,contas.nome
 from transacoes
 inner join  contas on 
 transacoes.conta_id +contas.conta_id
 /*4. Saúde e Gestão de Prontuários Eletrônicos
1. Exercício 1:
Crie uma consulta que recupere todos os prontuários, incluindo o nome do
paciente e o nome do médico que o atendeu. Utilize INNER JOIN entre as
tabelas de prontuários e pacientes.*/

SELECT prontuarios.prontuario_id, pacientes.nome AS nome_paciente,
 prontuarios.medico, prontuarios.diagnostico, 
 prontuarios.prescricao,
 prontuarios.observacoes,
 prontuarios.data_consulta
FROM prontuarios
INNER JOIN pacientes ON prontuarios.paciente_id = pacientes.paciente_id;

/*5. Logística e Cadeia de Suprimentos
1. Exercício 1:
Crie uma consulta para listar todos os produtos e seus fornecedores,
incluindo produtos sem fornecedores. Utilize LEFT JOIN entre as tabelas de
produtos e fornecedores.*/
SELECT 
p.nome_produto, 
f.nome_fornecedor
FROM 
produtos p
LEFT JOIN 
fornecedores f
ON 
p.id_fornecedor = f.id_fornecedor;

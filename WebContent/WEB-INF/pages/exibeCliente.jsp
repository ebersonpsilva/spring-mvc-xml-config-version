<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Exibe Detalhes do Cliente</title>
</head>
<body>

<h2>Detalhes do Cliente Cadastrado</h2>
   <table>
   <c:if test="${not empty cliente}">
	   <tr>
	        <td>CPF do Cliente: </td>
	        <td>${cliente.cpf}</td>
	    </tr>
	    <tr>
	        <td>Nome:</td>
	        <td>${cliente.nome}</td>
	    </tr>
	    <tr>
	        <td>RG:</td>
	        <td>${cliente.rg}</td>
	    </tr>
	    <tr>
	        <td>Sal�rio:</td>
	        <td>${cliente.salario}</td>
	    </tr>
	    <tr>
	        <td>Endere�o:</td>
	        <td>${cliente.endereco}</td>
	    </tr>
	    <tr>
	        <td>Profiss�o:</td>
	        <td>${cliente.profissao}</td>
	    </tr>
	    <tr>
	        <td>Telefone:</td>
	        <td>${cliente.telefone}</td>
	    </tr>
	    <tr>
	        <td>Descri��o:</td>
	        <td>${cliente.descricao}</td>
	    </tr>
	
	    <tr>
	        <td>Data de Nascimento:</td>
	        <td>
	        	<fmt:formatDate pattern="dd/MM/yyyy" value="${cliente.dataDB}"/>
			</td>
	    </tr>

	</c:if>
	
</table>
<a href="cliente">Cadastro</a>&nbsp;|&nbsp;
<a href="listaClientes">Listar Clientes</a>&nbsp;|&nbsp;
<a href="paginaInicial">Pagina Inicial</a>

</body>
</html>
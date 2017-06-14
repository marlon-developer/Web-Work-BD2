var app = angular.module("myApp", []);
app.controller("myController", function ($scope) {
	console.log("Ta Funcionando");

	//Categorias Produtos
	$scope.categoria = [
		{nome: "Alimento"},
		{nome: "Bebida"},
		{nome: "Higiene"},
		{nome: "Limpeza"}
	];

	//Cadastrar Produto
	$scope.cadastrarProduto = function() {
		$scope.showModal = false;
	};

	//Produtos Mercado Demonstraçao
	$scope.produtos = [
		{nome: "Chocolate", preco: 10, marca: "Nestle" , data: new Date(), categoria: "alimento"}, 
		{nome: "Carne", preco: 12.50, marca: "Friboy", data: new Date(),  categoria: "alimento"},
		{nome: "Pao", preco: 5, marca: "Macio", data: new Date(), categoria: "alimento"},
		{nome: "Leite", preco: 23, marca: "Elege", data: new Date(), categoria: "alimento"},
		{nome: "Papel Higienico", preco: 5, marca: "Govea", data: new Date(), categoria: "higiene"},
		{nome: "Shampoo", preco: 22, marca: "Headsholders", data: new Date(), categoria: "higiene"},
		{nome: "Sabonete", preco: 54.75, marca: "Dove", data: new Date(), categoria: "higiene"},
		{nome: "Vassoura", preco: 29, marca: "Sistrym", data: new Date(), categoria: "limpeza"},
		{nome: "Desinfetante", preco: 105.35, marca: "Veja", data: new Date(), categoria: "limpeza"},
		{nome: "Agua Sanitaria", preco: 3.50, marca: "White WC", data: new Date(), categoria: "limpeza"}
	];
		
	//Adicionar Produto
	$scope.addProduto = function() {
		$scope.showModal = true;
	};

	//Salvar Produto
	$scope.salvarProduto = function() {
		console.log($scope.addProduto);
		$scope.users.push($scope.addProduto);
	}

	//Ordenar Produto
	$scope.ordenarPor = function (campo) {
		$scope.ordenarDefault = campo;
		$scope.ordenar = !$scope.ordenar;
	}

	//Cadastrar Usuario
	$scope.cadastrarPessoa = {};

	//login 
	$scope.login = function() {
		$scope.showModal = false;
	};

	//Salvar Pessoa
	$scope.salvarPessoa = function() {
		console.log($scope.salvarPessoa);
		$scope.users.push($scope.salvarPessoa);
	}














});
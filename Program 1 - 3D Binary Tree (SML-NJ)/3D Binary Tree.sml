print ("********CS_355_Project1_Ryan_Lachman*******\n");
print ("*****************Datatype******************\n");
datatype binaryTree = Empty | 
Node of int * binaryTree * binaryTree;
print ("************First tree values**************\n");
val valueA = Node(22, Node(2,Empty,Empty),
		 Node(8, Node(88,Empty,Empty), 
		 Node(50,Empty,Empty)));
print ("************Second tree values*************\n");
val valueB = Node(25,Empty,Empty);
print ("************Third tree values**************\n");
val valueC = Node(75,valueA,valueB);
print ("************Creation of a node*************\n");
	fun nodeCreate ints tree = let
	fun nodeCreate valueCreate Empty = Node(valueCreate,Empty,Empty) | 
		nodeCreate valueCreate (Node(j,left,right)) =
		if valueCreate < j then Node(j, nodeCreate valueCreate left, right)
		else Node(j, left, nodeCreate valueCreate right);
	fun newCreate nil m = m | newCreate (n::nl) m = newCreate nl (nodeCreate n m);
		in newCreate ints tree
	end;
print ("************Created node values*************\n");
val new = nodeCreate [2, 4, 6, 8];
val temp = new Empty;
print ("************Tree values in order************\n");
	fun sortedPrint Empty = () | sortedPrint (Node(j,left,right)) =
		(sortedPrint left; 
		print(Int.toString j ^ " "); 
		sortedPrint right);
		sortedPrint valueC;
		sortedPrint temp;
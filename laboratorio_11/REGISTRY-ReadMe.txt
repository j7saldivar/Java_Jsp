
Para facilitar la ejecuci�n de servidores RMI en Netbeans se recomienda
agregar al servidor RMI la l�nea:


    Registry registry = LocateRegistry.createRegistry( 1099 );


Antes de intentar hacer Naming.bind � naming.rebind

ESTO EVITA TENER QUE HACER EL COMANDO rmiregistry.
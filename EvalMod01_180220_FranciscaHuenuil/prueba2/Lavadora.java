package prueba2;

public class Lavadora extends Electrodomestico{

	int carga;
	
	protected final static int carga_defec=5;
	
	public Lavadora (int peso, int precio) {
		super( peso, precio);
	}
	
	public Lavadora(int precio_base, String color, char consumo_energetico, int peso, int precio, int carga) {
		super(precio_base, color, consumo_energetico, peso, precio);
		this.carga = carga;
	}

	public int getCarga() {
		return carga;
	}



	



	
	
	
	
	
	
}

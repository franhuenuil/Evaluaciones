package prueba2;


public class Electrodomestico {
	

	int precio_base;
	String color;
	char consumo_energetico;
	int peso;
	int precio;
	
	
	protected final static String color_defec="blanco";
	protected final static char consumo_energetico_defec='F';
	protected final static int precio_base_defec=100000;
	protected final static int peso_defec=5;
	
	public Electrodomestico(String color_defec, char consumo_energetico_defec, int precio_base_defec, int peso_defec) {
		super();
	}
		
	public Electrodomestico(int peso, int precio) {
		super();
		this.peso = peso;
		this.precio = precio;
	}

	public Electrodomestico(int precio_base, String color, char consumo_energetico, int peso, int precio) {
		super();
		this.precio_base = precio_base;
		this.color = color;
		this.consumo_energetico = consumo_energetico;
		this.peso = peso;
		this.precio = precio;
	}

	public int getPrecio_base() {
		return precio_base;
	}
	
	public String getColor() {
		return color;
	}

	public char getConsumo_energetico() {
		return consumo_energetico;
	}

	public int getPeso() {
		return peso;
	}

	public int getPrecio() {
		return precio;
	}

	public static String getColorDefec() {
		return color_defec;
	}

	public static char getConsumoEnergeticoDefec() {
		return consumo_energetico_defec;
	}

	public static int getPrecioBaseDefec() {
		return precio_base_defec;
	}

	public static int getPesoDefec() {
		return peso_defec;
	}
	

}
 
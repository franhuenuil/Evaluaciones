package prueba2;

public class Television extends Electrodomestico{

	
	int resolucion;
	boolean sintonizador_TDT;
	
	protected final static int resolucion_defec = 20;
	protected final static boolean sintonizador_TDT_defec = false;
	
	
	public Television(int peso, int precio) {
		super(peso, precio);
		
	}
	public Television(int precio_base, String color, char consumo_energetico, int peso, int precio, int resolucion,
			boolean sintonizador_TDT) {
		super(precio_base, color, consumo_energetico, peso, precio);
		this.resolucion = resolucion;
		this.sintonizador_TDT = sintonizador_TDT;
	}
	
	public int getResolucion() {
		return resolucion;
	}
	
	public boolean isSintonizador_TDT() {
		return sintonizador_TDT;
	}
	



	
	
}

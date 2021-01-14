package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {
	
	private static List<Empresa> lista = new ArrayList<>();
	private static int chaveSequencial = 1;
	
	static {
		Empresa em = new Empresa();
		em.setId(chaveSequencial++);
		em.setNome("Alura");
		
		Empresa em2 = new Empresa();
		em2.setId(chaveSequencial++);
		em2.setNome("Caelum");
		
		lista.add(em);
		lista.add(em2);
	}
	
	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		Banco.lista.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		return Banco.lista;
	}

	public void removeEmpresa(Integer id) {
		Iterator<Empresa> it = Banco.lista.iterator();
		
		while (it.hasNext()) {
			Empresa em = it.next();
			
			if (em.getId() == id) {
				it.remove();
			}
		}
	}

	public Empresa findEmpresa(Integer id) {
		
		for (Empresa empresa : Banco.lista) {
			if (empresa.getId() == id) {
				return empresa;
			}
		}
		
		return null;
	}
}

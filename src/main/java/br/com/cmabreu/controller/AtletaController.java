package br.com.cmabreu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.cmabreu.misc.Atletas;


@Controller
public class AtletaController extends BasicController {

	@RequestMapping(value = "/atletas", method = RequestMethod.GET, produces = "application/json") 
	public @ResponseBody Atletas getAtletas( HttpSession session, HttpServletRequest request ) {

		Atletas atletas = new Atletas();
		
		return atletas;
	}	

	
	
	
}

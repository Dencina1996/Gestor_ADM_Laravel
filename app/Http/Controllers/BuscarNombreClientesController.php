<?php
	namespace App\Http\Controllers;
	use Illuminate\Http\Request;
	use DB;
	use App\Http\Requests;
	use App\Http\Controllers\Controller;
	
	class BuscarNombreClientesController extends Controller {
		public function index(Request $request){

		$texto = $request->input('textoBuscar');

		$clientes = DB::select('select * from Clientes where Nombre like "%'.$texto.'%"');
		return view('lista_clientes',['clientes'=>$clientes]);
	}
}
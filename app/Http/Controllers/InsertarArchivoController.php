<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class InsertarArchivoController extends Controller {
	
   public function insertFile(Request $request) {
   	$idArchivo = null;
   	$idVenta = $request->input('idVenta');
   	$idCliente = $request->input('idCliente');
   	$tipo = $request->input('tipo');
   	$ruta = ''.$tipo.'_'.date('dmYHis').'.pdf';
   	$request->archivo->storeAs('public', ''.$tipo.'_'.date('dmYHis').'.pdf');
   	DB::table('Archivos')->insert([
		'ID_Archivo'=>$idArchivo,
		'ID_Cliente'=>$idCliente,
		'ID_Venta'=>$idVenta,
		'Tipo'=>$tipo,
		'Ruta_Archivo'=>$ruta
		]);

   	$ventas = DB::select('select * from Ventas where ID_Venta='.$idVenta.'');
	$archivos = DB::select('select * from Archivos where ID_Venta='.$idVenta.'');

	return view('detalles_venta',['archivos'=>$archivos,'ventas'=>$ventas]);
	}
}
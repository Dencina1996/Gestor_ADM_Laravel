<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        DB::table('Clientes')->delete();
        //DB::table('Ventas')->delete();
            
        for ($i=0; $i < 30; $i++) {
            DB::table('Clientes')->insert([
                'ID_Cliente' => NULL,
                'Nombre' => str_random(10).' '.str_random(10).' '.str_random(10),
                'Email' => str_random(15).'@'.str_random(5).'.'.str_random(3),
                'Telefono' => rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9),
                'CIF_NIF' => self::getNIF(),
                'Direccion' => str_random(25),
                'Provincia' => str_random(25),
                'Localidad' => str_random(25),
                'CP' => rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9),
                'Fecha_Modificacion'=>date('Y-m-d H:i:s'),
            ]);
        }
    }

    function getNIF(){
        $number = mt_rand(10000000, 99999999);
        return($number.self::LetraNIF($number));
        
    }
    function LetraNIF($dni) { 
        return $letraNif= substr ("TRWAGMYFPDXBNJZSQVHLCKEO", $dni % 23, 1); 
    } 
}
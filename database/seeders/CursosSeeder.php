<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class CursosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $cursos = ["Docker", "PHP", "Javascript", "Arquitetura de software"];

        foreach ($cursos as $curso) {
            DB::table('cursos')->insert([
                'nome' => $curso
            ]);
        }
    }
}

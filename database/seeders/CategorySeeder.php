<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('categories')->insert([
            ['name' => 'Giáo khoa'],
            ['name' => 'Kinh tế'],
            ['name' => 'Tâm lý'],
            ['name' => 'Tự nhiên'],
            ['name' => 'Thiên văn']
        ]);
    }
}

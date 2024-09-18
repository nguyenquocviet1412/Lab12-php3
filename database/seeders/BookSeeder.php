<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i=0; $i < 100; $i++) {

            DB::table('books')->insert([
                'name' => fake()->text(30),
                'thumbnail' => fake()->imageUrl(),
                'author' => fake()->name(),
                'publisher' => fake()->name(30),
                'publication' => fake()->dateTime(),
                'price' => rand(10,200),
                'quantity' => rand(1,100),
                'category_id' =>rand(1,5)
            ]);
        }
    }
}

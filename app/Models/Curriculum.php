<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Curriculum
 * 
 * @property int $id_curriculum
 * @property string $path_curriculum
 * 
 * @property \Illuminate\Database\Eloquent\Collection $usuarios
 *
 * @package App\Models
 */
class Curriculum extends Eloquent
{
	protected $table = 'curriculum';
	protected $primaryKey = 'id_curriculum';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id_curriculum' => 'int'
	];

	protected $fillable = [
		'path_curriculum'
	];

	public function usuarios()
	{
		return $this->hasMany(\App\Models\Usuario::class, 'id_curriculum');
	}
}

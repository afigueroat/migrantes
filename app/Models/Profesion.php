<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Profesion
 * 
 * @property int $id_profesion
 * @property string $desc_profesion
 * 
 * @property \Illuminate\Database\Eloquent\Collection $usuarios
 *
 * @package App\Models
 */
class Profesion extends Eloquent
{
	protected $table = 'profesion';
	protected $primaryKey = 'id_profesion';
	public $timestamps = false;

	protected $fillable = [
		'desc_profesion'
	];

	public function usuarios()
	{
		return $this->belongsToMany(\App\Models\Usuario::class, 'profesion_link_usuario', 'id_profesion', 'id_usuario')
					->withPivot('id_prof_link_us');
	}
}

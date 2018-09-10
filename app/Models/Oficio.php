<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Oficio
 * 
 * @property int $id_oficios
 * @property string $desc_oficios
 * 
 * @property \Illuminate\Database\Eloquent\Collection $usuarios
 *
 * @package App\Models
 */
class Oficio extends Eloquent
{
	protected $primaryKey = 'id_oficios';
	public $timestamps = false;

	protected $fillable = [
		'desc_oficios'
	];

	public function usuarios()
	{
		return $this->belongsToMany(\App\Models\Usuario::class, 'oficio_link_usuario', 'id_oficios', 'id_usuario')
					->withPivot('id_of_link_us');
	}
}

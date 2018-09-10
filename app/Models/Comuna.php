<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Comuna
 * 
 * @property int $id_comuna
 * @property string $desc_comuna
 * @property int $id_ciudad
 * 
 * @property \App\Models\Ciudad $ciudad
 * @property \Illuminate\Database\Eloquent\Collection $usuarios
 *
 * @package App\Models
 */
class Comuna extends Eloquent
{
	protected $table = 'comuna';
	protected $primaryKey = 'id_comuna';
	public $timestamps = false;

	protected $casts = [
		'id_ciudad' => 'int'
	];

	protected $fillable = [
		'desc_comuna',
		'id_ciudad'
	];

	public function ciudad()
	{
		return $this->belongsTo(\App\Models\Ciudad::class, 'id_ciudad');
	}

	public function usuarios()
	{
		return $this->hasMany(\App\Models\Usuario::class, 'id_comuna');
	}
}

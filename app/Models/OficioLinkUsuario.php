<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class OficioLinkUsuario
 * 
 * @property int $id_of_link_us
 * @property int $id_oficios
 * @property int $id_usuario
 * 
 * @property \App\Models\Oficio $oficio
 * @property \App\Models\Usuario $usuario
 *
 * @package App\Models
 */
class OficioLinkUsuario extends Eloquent
{
	protected $table = 'oficio_link_usuario';
	protected $primaryKey = 'id_of_link_us';
	public $timestamps = false;

	protected $casts = [
		'id_oficios' => 'int',
		'id_usuario' => 'int'
	];

	protected $fillable = [
		'id_oficios',
		'id_usuario'
	];

	public function oficio()
	{
		return $this->belongsTo(\App\Models\Oficio::class, 'id_oficios');
	}

	public function usuario()
	{
		return $this->belongsTo(\App\Models\Usuario::class, 'id_usuario');
	}
}

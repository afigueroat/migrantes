<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class ProfesionLinkUsuario
 * 
 * @property int $id_prof_link_us
 * @property int $id_profesion
 * @property int $id_usuario
 * 
 * @property \App\Models\Profesion $profesion
 * @property \App\Models\Usuario $usuario
 *
 * @package App\Models
 */
class ProfesionLinkUsuario extends Eloquent
{
	protected $table = 'profesion_link_usuario';
	protected $primaryKey = 'id_prof_link_us';
	public $timestamps = false;

	protected $casts = [
		'id_profesion' => 'int',
		'id_usuario' => 'int'
	];

	protected $fillable = [
		'id_profesion',
		'id_usuario'
	];

	public function profesion()
	{
		return $this->belongsTo(\App\Models\Profesion::class, 'id_profesion');
	}

	public function usuario()
	{
		return $this->belongsTo(\App\Models\Usuario::class, 'id_usuario');
	}
}

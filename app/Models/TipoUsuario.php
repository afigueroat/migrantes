<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class TipoUsuario
 * 
 * @property int $id_tipo_usuario
 * @property string $desc_tipo_usuario
 * 
 * @property \Illuminate\Database\Eloquent\Collection $usuarios
 *
 * @package App\Models
 */
class TipoUsuario extends Eloquent
{
	protected $table = 'tipo_usuario';
	protected $primaryKey = 'id_tipo_usuario';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id_tipo_usuario' => 'int'
	];

	protected $fillable = [
		'desc_tipo_usuario'
	];

	public function usuarios()
	{
		return $this->hasMany(\App\Models\Usuario::class, 'id_tipo_usuario');
	}
}

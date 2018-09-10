<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Anuncio
 * 
 * @property int $id_anuncio
 * @property string $titulo_anuncio
 * @property string $alter_titulo_anuncio
 * @property string $detalle_anuncio
 * @property string $alter_detalle_anuncio
 * @property \Carbon\Carbon $fecha_anuncio
 * @property int $duracion_anuncio
 * @property \Carbon\Carbon $fecha_cierre_anuncio
 * @property int $estado_anuncio
 * @property int $id_usuario
 * @property int $id_idioma_alter
 * 
 * @property \App\Models\Idioma $idioma
 * @property \App\Models\Usuario $usuario
 * @property \Illuminate\Database\Eloquent\Collection $postulacions
 *
 * @package App\Models
 */
class Anuncio extends Eloquent
{
	protected $table = 'anuncio';
	protected $primaryKey = 'id_anuncio';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id_anuncio' => 'int',
		'duracion_anuncio' => 'int',
		'estado_anuncio' => 'int',
		'id_usuario' => 'int',
		'id_idioma_alter' => 'int'
	];

	protected $dates = [
		'fecha_anuncio',
		'fecha_cierre_anuncio'
	];

	protected $fillable = [
		'titulo_anuncio',
		'alter_titulo_anuncio',
		'detalle_anuncio',
		'alter_detalle_anuncio',
		'fecha_anuncio',
		'duracion_anuncio',
		'fecha_cierre_anuncio',
		'estado_anuncio',
		'id_usuario',
		'id_idioma_alter'
	];

	public function idioma()
	{
		return $this->belongsTo(\App\Models\Idioma::class, 'id_idioma_alter');
	}

	public function usuario()
	{
		return $this->belongsTo(\App\Models\Usuario::class, 'id_usuario');
	}

	public function postulacions()
	{
		return $this->hasMany(\App\Models\Postulacion::class, 'id_anuncio');
	}
}

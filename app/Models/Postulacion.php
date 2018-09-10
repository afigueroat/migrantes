<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Postulacion
 * 
 * @property int $id_postulacion
 * @property \Carbon\Carbon $fecha_postulacion
 * @property int $id_usuario_postulante
 * @property int $id_anuncio
 * @property int $id_estado_postulacion
 * @property \Carbon\Carbon $fecha_cambio_postulacion
 * 
 * @property \App\Models\Anuncio $anuncio
 * @property \App\Models\EstadoPostulacion $estado_postulacion
 * @property \App\Models\Usuario $usuario
 *
 * @package App\Models
 */
class Postulacion extends Eloquent
{
	protected $table = 'postulacion';
	protected $primaryKey = 'id_postulacion';
	public $timestamps = false;

	protected $casts = [
		'id_usuario_postulante' => 'int',
		'id_anuncio' => 'int',
		'id_estado_postulacion' => 'int'
	];

	protected $dates = [
		'fecha_postulacion',
		'fecha_cambio_postulacion'
	];

	protected $fillable = [
		'fecha_postulacion',
		'id_usuario_postulante',
		'id_anuncio',
		'id_estado_postulacion',
		'fecha_cambio_postulacion'
	];

	public function anuncio()
	{
		return $this->belongsTo(\App\Models\Anuncio::class, 'id_anuncio');
	}

	public function estado_postulacion()
	{
		return $this->belongsTo(\App\Models\EstadoPostulacion::class, 'id_estado_postulacion');
	}

	public function usuario()
	{
		return $this->belongsTo(\App\Models\Usuario::class, 'id_usuario_postulante');
	}
}

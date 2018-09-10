<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class EstadoPostulacion
 * 
 * @property int $id_estado_postulacion
 * @property string $desc_estado_postulacion
 * 
 * @property \Illuminate\Database\Eloquent\Collection $postulacions
 *
 * @package App\Models
 */
class EstadoPostulacion extends Eloquent
{
	protected $table = 'estado_postulacion';
	protected $primaryKey = 'id_estado_postulacion';
	public $timestamps = false;

	protected $fillable = [
		'desc_estado_postulacion'
	];

	public function postulacions()
	{
		return $this->hasMany(\App\Models\Postulacion::class, 'id_estado_postulacion');
	}
}

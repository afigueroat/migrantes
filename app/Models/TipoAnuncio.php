<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class TipoAnuncio
 * 
 * @property int $id_tipo_anuncio
 * @property string $desc_tipo_anuncio
 *
 * @package App\Models
 */
class TipoAnuncio extends Eloquent
{
	protected $table = 'tipo_anuncio';
	protected $primaryKey = 'id_tipo_anuncio';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id_tipo_anuncio' => 'int'
	];

	protected $fillable = [
		'desc_tipo_anuncio'
	];
}

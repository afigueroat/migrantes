<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class TipoDocumento
 * 
 * @property int $id_tipo_documento
 * @property string $desc_tipo_documento
 * 
 * @property \Illuminate\Database\Eloquent\Collection $documentos
 *
 * @package App\Models
 */
class TipoDocumento extends Eloquent
{
	protected $table = 'tipo_documento';
	protected $primaryKey = 'id_tipo_documento';
	public $timestamps = false;

	protected $fillable = [
		'desc_tipo_documento'
	];

	public function documentos()
	{
		return $this->hasMany(\App\Models\Documento::class, 'id_tipo_documento');
	}
}

<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Documento
 * 
 * @property int $id_documento
 * @property string $desc_documento
 * @property string $path_documento
 * @property int $id_tipo_documento
 * 
 * @property \App\Models\TipoDocumento $tipo_documento
 * @property \Illuminate\Database\Eloquent\Collection $usuarios
 *
 * @package App\Models
 */
class Documento extends Eloquent
{
	protected $primaryKey = 'id_documento';
	public $timestamps = false;

	protected $casts = [
		'id_tipo_documento' => 'int'
	];

	protected $fillable = [
		'desc_documento',
		'path_documento',
		'id_tipo_documento'
	];

	public function tipo_documento()
	{
		return $this->belongsTo(\App\Models\TipoDocumento::class, 'id_tipo_documento');
	}

	public function usuarios()
	{
		return $this->belongsToMany(\App\Models\Usuario::class, 'documentos_link_usuarios', 'id_documento', 'id_usuario')
					->withPivot('id_doc_link_us', 'desc_doc_link_us');
	}
}

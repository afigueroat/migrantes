<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class DocumentosLinkUsuario
 * 
 * @property int $id_doc_link_us
 * @property int $id_documento
 * @property int $id_usuario
 * @property string $desc_doc_link_us
 * 
 * @property \App\Models\Documento $documento
 * @property \App\Models\Usuario $usuario
 *
 * @package App\Models
 */
class DocumentosLinkUsuario extends Eloquent
{
	protected $primaryKey = 'id_doc_link_us';
	public $timestamps = false;

	protected $casts = [
		'id_documento' => 'int',
		'id_usuario' => 'int'
	];

	protected $fillable = [
		'id_documento',
		'id_usuario',
		'desc_doc_link_us'
	];

	public function documento()
	{
		return $this->belongsTo(\App\Models\Documento::class, 'id_documento');
	}

	public function usuario()
	{
		return $this->belongsTo(\App\Models\Usuario::class, 'id_usuario');
	}
}

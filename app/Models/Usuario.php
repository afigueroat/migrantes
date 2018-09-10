<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Usuario
 * 
 * @property int $id_usuario
 * @property string $rut_usuario
 * @property int $status_usuario
 * @property string $nombre_usuario
 * @property string $segnombre_usuario
 * @property string $ape_paterno_usuario
 * @property string $ape_materno_usuario
 * @property int $sexo_usuario
 * @property string $email_usuario
 * @property string $direccion_usario
 * @property int $id_comuna
 * @property string $fono_cel_usuario
 * @property string $fono_casa_usuario
 * @property int $id_tipo_usuario
 * @property int $id_curriculum
 * @property \Carbon\Carbon $fecha_creacion_usuario
 * @property \Carbon\Carbon $fecha_modificacion_usuario
 * @property string $nick_usuario
 * @property string $password_usuario
 * @property string $foto_path_usuario
 * 
 * @property \App\Models\Comuna $comuna
 * @property \App\Models\Curriculum $curriculum
 * @property \App\Models\TipoUsuario $tipo_usuario
 * @property \Illuminate\Database\Eloquent\Collection $anuncios
 * @property \Illuminate\Database\Eloquent\Collection $documentos
 * @property \Illuminate\Database\Eloquent\Collection $oficios
 * @property \Illuminate\Database\Eloquent\Collection $postulacions
 * @property \Illuminate\Database\Eloquent\Collection $profesions
 *
 * @package App\Models
 */
class Usuario extends Eloquent
{
	protected $primaryKey = 'id_usuario';
	public $timestamps = false;

	protected $casts = [
		'status_usuario' => 'int',
		'sexo_usuario' => 'int',
		'id_comuna' => 'int',
		'id_tipo_usuario' => 'int',
		'id_curriculum' => 'int'
	];

	protected $dates = [
		'fecha_creacion_usuario',
		'fecha_modificacion_usuario'
	];

	protected $fillable = [
		'rut_usuario',
		'status_usuario',
		'nombre_usuario',
		'segnombre_usuario',
		'ape_paterno_usuario',
		'ape_materno_usuario',
		'sexo_usuario',
		'email_usuario',
		'direccion_usario',
		'id_comuna',
		'fono_cel_usuario',
		'fono_casa_usuario',
		'id_tipo_usuario',
		'id_curriculum',
		'fecha_creacion_usuario',
		'fecha_modificacion_usuario',
		'nick_usuario',
		'password_usuario',
		'foto_path_usuario'
	];

	public function comuna()
	{
		return $this->belongsTo(\App\Models\Comuna::class, 'id_comuna');
	}

	public function curriculum()
	{
		return $this->belongsTo(\App\Models\Curriculum::class, 'id_curriculum');
	}

	public function tipo_usuario()
	{
		return $this->belongsTo(\App\Models\TipoUsuario::class, 'id_tipo_usuario');
	}

	public function anuncios()
	{
		return $this->hasMany(\App\Models\Anuncio::class, 'id_usuario');
	}

	public function documentos()
	{
		return $this->belongsToMany(\App\Models\Documento::class, 'documentos_link_usuarios', 'id_usuario', 'id_documento')
					->withPivot('id_doc_link_us', 'desc_doc_link_us');
	}

	public function oficios()
	{
		return $this->belongsToMany(\App\Models\Oficio::class, 'oficio_link_usuario', 'id_usuario', 'id_oficios')
					->withPivot('id_of_link_us');
	}

	public function postulacions()
	{
		return $this->hasMany(\App\Models\Postulacion::class, 'id_usuario_postulante');
	}

	public function profesions()
	{
		return $this->belongsToMany(\App\Models\Profesion::class, 'profesion_link_usuario', 'id_usuario', 'id_profesion')
					->withPivot('id_prof_link_us');
	}
}

<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Idioma
 * 
 * @property int $id_idioma
 * @property string $desc_idioma
 * 
 * @property \Illuminate\Database\Eloquent\Collection $anuncios
 *
 * @package App\Models
 */
class Idioma extends Eloquent
{
	protected $table = 'idioma';
	protected $primaryKey = 'id_idioma';
	public $timestamps = false;

	protected $fillable = [
		'desc_idioma'
	];

	public function anuncios()
	{
		return $this->hasMany(\App\Models\Anuncio::class, 'id_idioma_alter');
	}
}

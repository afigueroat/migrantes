<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Ciudad
 * 
 * @property int $id_ciudad
 * @property string $desc_ciudad
 * @property int $id_region
 * 
 * @property \App\Models\Region $region
 * @property \Illuminate\Database\Eloquent\Collection $comunas
 *
 * @package App\Models
 */
class Ciudad extends Eloquent
{
	protected $table = 'ciudad';
	protected $primaryKey = 'id_ciudad';
	public $timestamps = false;

	protected $casts = [
		'id_region' => 'int'
	];

	protected $fillable = [
		'desc_ciudad',
		'id_region'
	];

	public function region()
	{
		return $this->belongsTo(\App\Models\Region::class, 'id_region');
	}

	public function comunas()
	{
		return $this->hasMany(\App\Models\Comuna::class, 'id_ciudad');
	}
}

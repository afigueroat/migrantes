<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 10 Sep 2018 14:20:47 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Region
 * 
 * @property int $id_region
 * @property string $desc_region
 * 
 * @property \Illuminate\Database\Eloquent\Collection $ciudads
 *
 * @package App\Models
 */
class Region extends Eloquent
{
	protected $table = 'region';
	protected $primaryKey = 'id_region';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id_region' => 'int'
	];

	protected $fillable = [
		'desc_region'
	];

	public function ciudads()
	{
		return $this->hasMany(\App\Models\Ciudad::class, 'id_region');
	}
}

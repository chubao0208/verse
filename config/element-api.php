<?php

use craft\elements\Entry;
use craft\helpers\UrlHelper;

return [
    'endpoints' => [
        'api/home.json' => function () {
            return [

                'elementType' => Entry::class

            ];
        }
    ]
];

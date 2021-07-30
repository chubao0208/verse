<?php

use craft\elements\Entry;
use craft\helpers\UrlHelper;

return [
    'endpoints' => [
        'api/home.json' => function () {
            return [

                'elementType' => Entry::class,
                'transformer' => function (craft\elements\Entry $entry) {
                    return [
                        'cards' => $entry->cards,
                        'banner1Image' => $entry->banner1Image
                    ];
                },

            ];
        }
    ]
];

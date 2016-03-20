<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules' => [
        'rbac' => [
            'class' => 'johnitvn\rbacplus\Module'
        ]
    ],
    'components' => [
		'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=thongvn_db',
            'username' => 'thongvn_db',
            'password' => 'Thong@123456',
            'charset' => 'utf8',
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
        ],
        'config' => [
            'class' => 'abhimanyu\config\components\Config', // Class (Required)
            'db' => 'db',                                 // Database Connection ID (Optional)
            'tableName' => '{{%config}}',                        // Table Name (Optioanl)
            'cacheId' => 'cache',                              // Cache Id. Defaults to NULL (Optional)
            'cacheKey' => 'config.cache',                       // Key identifying the cache value (Required only if cacheId is set)
            'cacheDuration' => 100                                   // Cache Expiration time in seconds. 0 means never expire. Defaults to 0 (Optional)
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
    ],
];
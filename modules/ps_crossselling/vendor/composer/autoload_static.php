<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitb972cf1255873f30fa1efd632173567a
{
    public static $classMap = array (
        'Ps_Crossselling' => __DIR__ . '/../..' . '/ps_crossselling.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->classMap = ComposerStaticInitb972cf1255873f30fa1efd632173567a::$classMap;

        }, null, ClassLoader::class);
    }
}

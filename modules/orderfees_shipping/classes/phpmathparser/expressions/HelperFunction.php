<?php
/**
 * The PHP Math Parser library
 *
 * @author     Anthony Ferrara <ircmaxell@ircmaxell.com>
 * @copyright  2011 The Authors
 * @license    http://www.opensource.org/licenses/mit-license.html  MIT License
 */

namespace PHPMathParser\Expressions;

use PHPMathParser\Stack;

class HelperFunction extends Operator
{
    protected $precedence = 10;
    
    public static function isFunction($value)
    {
        return method_exists(__CLASS__, $value);
    }
    
    public function operate(Stack $stack)
    {
        $args = array();
        
        while ($stack->peek()) {
            $value = $stack->pop()->operate($stack);
            
            if ($value != ';') {
                array_unshift($args, $value);
            }
        }
        
        $function = \Tools::strtolower($this->value);
        
        $result = new Number(call_user_func_array(array(__CLASS__, $function), $args));
        
        return $result->operate($stack);
    }
    
    public static function price($price)
    {
        return \Tools::convertPrice($price);
    }
}

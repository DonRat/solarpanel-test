<?php

use SilverStripe\Dev\SapphireTest;
use MySite\CalculationHelper;

class getCashBack extends SapphireTest
{
    public function getCashBack error checking ()
    {
        $income = 0;
        $bill = 0;
	$solarPanels = 0;
        $this->assertEquals(0, CalculationHelper::getCashBack($income, $bill, $solarPanels));
    }

    public function getCashBack calc ()
    {
         $income = 50000;
        $bill = 500;
	$solarPanels = 1;
        $this->assertEquals(0, CalculationHelper::getCashBack($income, $bill, $solarPanels));;
    }
}

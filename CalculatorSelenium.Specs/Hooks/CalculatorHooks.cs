using CalculatorSelenium.Specs.Drivers;
using CalculatorSelenium.Specs.PageObjects;
using TechTalk.SpecFlow;

namespace CalculatorSelenium.Specs.Hooks
{
    [Binding]
    public class CalculatorHooks
    {
        ///<summary>
        ///  Reset the calculator before each scenario tagged with "Calculator"
        /// </summary>
        [BeforeScenario("Calculator")]
        public static void BeforeScenario(BrowserDriver browserDriver)
        {
            var calculatorPageObject = new CalculatorPageObject(browserDriver.Current);
            calculatorPageObject.EnsureCalculatorIsOpenAndReset();
        }
    }
}
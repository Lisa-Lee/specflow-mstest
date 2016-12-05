using System;
using TechTalk.SpecFlow;

namespace specflow_mstest.Steps
{
    [Binding]
    public class MyFeatureSteps
    {
        [Given(@"I have this")]
        public void GivenIHaveThis()
        {
			Console.Write("I have this");
        }
        
		[When(@"I do this")]
		public void WhenIDoThis()
		{
			Console.Write("I do this");
		}
		
		[Then(@"I get this")]
        public void ThenIGetThis()
        {
			Console.Write("I get this");
		}
    }
}

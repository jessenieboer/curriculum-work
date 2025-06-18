from pytest_bdd import given, when, then, scenarios, parsers
from friday_checker_pkg import check_friday

scenarios("determine_if_a_day_is_friday.feature")

@given(parsers.parse('the day is "{day}"'), target_fixture="current_day")
def given_the_day_is(day: str) -> str:
    return day

@when("I call the function to check if it is Friday", target_fixture="result")
def when_call_is_friday(current_day: str) -> str:
    return check_friday.is_friday(current_day)

@then(parsers.parse('the function should return "{expected_result}"'))
def then_function_should_return(expected_result: str, result: str):
    assert result == expected_result

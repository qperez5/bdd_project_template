from behave import given, when, then


@given('a number a {a}')
def given_a_number_a(context, a):
    context.a = float(a)


@given('a number b {b}')
def given_a_number_a(context, b):
    context.b = float(b)


@when('both numbers are added')
def when_both_numbers_are_added(context):
    context.sum = context.a + context.b


@then('the result is {expected_sum}')
def then_the_sum_is(context, expected_sum):
    assert float(expected_sum) == context.sum


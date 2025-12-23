from {{ cookiecutter.package }} import get_message


def test_get_app_name():
    assert get_message() == "Yo!"

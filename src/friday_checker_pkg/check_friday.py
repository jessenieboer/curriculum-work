import logging

def check_if_friday(day:str):
    logging.debug(f"day={day}")
    logging.debug(f"day={day.lower()}")
    san_day = day.strip().lower()
    if san_day == "friday":
        return "Yes"
    elif san_day not in {"sunday", "monday", "tuesday", "wednesday", "thursday", "saturday"}:
        return "Invalid day"
    else:
        return "No"

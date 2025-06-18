def is_friday(day: str) -> str:
    if day == "Friday":
        return "Yes"
    elif day in {"Monday", "Tuesday", "Wednesday", "Thursday", "Saturday", "Sunday"}:
        return "No"
    return "Invalid day"

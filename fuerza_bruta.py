def ladron_fuerza_bruta(nums, i=0):
    """Prueba todas las combinaciones: robar o no robar cada casa."""
    if i >= len(nums):
        return 0
    no_robar = ladron_fuerza_bruta(nums, i + 1)
    si_robar = nums[i] + ladron_fuerza_bruta(nums, i + 2)
    return max(no_robar, si_robar)


if __name__ == "__main__":
    nums = [2, 7, 9, 3, 1]
    print("Casas:", nums)
    print("Maximo dinero (fuerza bruta):", ladron_fuerza_bruta(nums))
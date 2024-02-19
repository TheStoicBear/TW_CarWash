# TW_CarWash - Enhanced Car Wash Script

TW_CarWash is a versatile car wash script originally created by DanielWolff042. This script enables players to wash their vehicles with ease. In this edited version, we've made significant enhancements to its functionality and customization options.

## Original Script Details

- **Author:** DanielWolff042

## Enhancements Made

- **Removed Dependencies:** We removed dependencies on Mythic Notify and ESX to make the script more lightweight and adaptable to different environments.
- **Configurable Options:** Added options for server owners to customize the car wash behavior, including the ability to choose between using an inventory item or a command to trigger the car wash.
- **OxLib Integration:** Implemented OxLib notifications and progression bars for a more customizable and visually appealing car wash experience.

## Usage

To integrate TW_CarWash into your FiveM server, follow these steps:

1. **Download:** Obtain the script files.
2. **Configuration:** Customize the script settings in the `config.lua` file to match your server's requirements.
3. **OxLib Installation:** Ensure OxLib is installed and properly integrated with your server.
4. **Installation:** Add the edited version of TW_CarWash to your server's resources folder.
5. **Configuration:** Ensure the resource is properly configured and started in your `server.cfg` file.
6. **Launch:** Start your FiveM server and enjoy the enhanced car wash functionality!

## ox_inventory Item
- Add this to your `ox_inventory/data/items.lua`
```
    ['cleaning_kit'] = {
        label = 'cleaning_kit',
        weight = 1000,
        stack = false,
        close = true,
        consume = 1,
        description = 'cleaning_kit cleaning_kit cleaning_kit.',
        client = {
            export = 'TW_CarWash.StartWashingProcess'
        }
    },
```
- Add this to your `ox_inventory/web/images`
![cleaning_kit](https://github.com/TheStoicBear/TW_CarWash/assets/112611821/fb6aec40-92a7-423b-bc4e-1c082b87a577)




---------------------------------------------


# If you encounter any issues or have questions, don't hesitate to reach out for support.

## Credits

- **Original Author:** DanielWolff042
- **Edited Version:** TheStoicBear https://discord.gg/YZQ6fujYzA

## License

This edited version of TW_CarWash is provided under the same license terms as the original script by DanielWolff042. Please refer to the original license for more details.

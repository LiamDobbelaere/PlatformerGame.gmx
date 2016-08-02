switch (argument0)
{
    case vk_right:
        with (puppet) puppet_moveright_direct = argument1;
        break;
    case vk_left:
        with (puppet) puppet_moveleft_direct = argument1;
        break;
    case vk_up:
        with (puppet) {
            var bool =  argument1;
            puppet_upaction_direct = bool;
            
            if (bool == true)
            {
                puppet_upaction_pressed = true;
            }
            else
            {
                puppet_upaction_released = true;
            }
        }
        break;
    case vk_down:
        with (puppet) {
            var bool = argument1;
            puppet_downaction_direct = bool;
            
            if (bool == true)
            {
                puppet_downaction_pressed = true;
            }
            else
            {
                puppet_downaction_released = true;
            }
        }
        break;
}

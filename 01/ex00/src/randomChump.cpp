#include "Zombie.hpp"

void	Zombie::randomChump(std::string name)
{
	Zombie	z(name);
	z.announce();
}

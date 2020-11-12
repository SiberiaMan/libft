/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_arg.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dchani <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/07 15:31:23 by dchani            #+#    #+#             */
/*   Updated: 2020/11/08 16:39:38 by dchani           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int			is_flag(char c)
{
	return (ft_strchrf("-+ #0", c)); // Find char c and return char or null
}

int			is_modifier(char c)
{
	return (ft_strchrf("lh", c));
}

int			is_type(char c)
{
	return (ft_strchrf("diouxXfFgGaAcsSpn%", c) != 0);
}

int			is_unsigned(char c)
{
	return(ft_strchrf("ouxX", c) != 0);
}

int			is_str_n_val(char c)
{
	if (ft_strchrf("sc%", c))
		return (-1);
	if (ft_strchrf("n", c))
		return (0);
	return (1);
}

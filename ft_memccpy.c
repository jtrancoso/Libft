/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jtrancos <jtrancos@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/15 13:47:00 by jtrancos          #+#    #+#             */
/*   Updated: 2021/04/07 13:50:05 by jtrancos         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memccpy(void *dst, const void *src, int c, size_t n)
{
	unsigned char			q;
	size_t					i;
	unsigned char			*dst2;
	unsigned const char		*src2;

	dst2 = (unsigned char *)dst;
	src2 = (const unsigned char *)src;
	i = 0;
	q = (unsigned char)c;
	while (i < n)
	{
		dst2[i] = src2[i];
		if (dst2[i] == q)
			return ((void *)(dst + i + 1));
		i++;
	}
	return (NULL);
}

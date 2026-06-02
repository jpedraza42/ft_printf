/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jpedraza < jpedraza@student.42malaga.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/05/14 09:40:06 by jpedraza          #+#    #+#             */
/*   Updated: 2026/05/19 16:34:55 by jpedraza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <unistd.h>
# include <stdarg.h>
/*# include <stdio.h> For printf*/

int	ft_printf(const char *format, ...);
int	ft_putptr(void *ptr);
int	ft_putchar(char c);
int	ft_puthex(unsigned int n, char format);
int	ft_putnbr(int n);
int	ft_putunbr(unsigned int n);
int	ft_putstr(char *str);
int	ft_putptrhex(unsigned long n);

#endif

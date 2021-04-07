# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jtrancos <jtrancos@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/13 13:41:25 by jtrancos          #+#    #+#              #
#    Updated: 2021/04/07 13:50:38 by jtrancos         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a

SRCS		=	ft_isalnum.c\
				ft_isalpha.c\
				ft_isdigit.c\
				ft_isspace.c\
				ft_isprint.c\
				ft_isascii.c\
				ft_toupper.c\
				ft_tolower.c\
				ft_atoi.c\
				ft_strlen.c\
				ft_strchr.c\
				ft_strrchr.c\
				ft_strncmp.c\
				ft_strlcpy.c\
				ft_strlcat.c\
				ft_strnstr.c\
				ft_memset.c\
				ft_bzero.c\
				ft_memcpy.c\
				ft_memccpy.c\
				ft_memmove.c\
				ft_memchr.c\
				ft_memcmp.c\
				ft_calloc.c\
				ft_strdup.c\
				ft_substr.c\
				ft_strjoin.c\
				ft_strtrim.c\
				ft_split.c\
				ft_itoa.c\
				ft_strmapi.c\
				ft_putchar_fd.c\
				ft_putstr_fd.c\
				ft_putendl_fd.c\
				ft_putnbr_fd.c\
				ft_lstnew.c\
				ft_lstadd_front.c\
				ft_lstsize.c\
				ft_lstlast.c\
				ft_lstadd_back.c\
				ft_lstdelone.c\
				ft_lstclear.c\
				ft_lstiter.c\
				ft_lstmap.c\

OBJS		= $(SRCS:.c=.o)
CC			= cc
RM			= rm -f
#CFLAGS		= -Wall -Werror -Wextra

.c.o:
	$(CC) $(FLAGS) -c $< -o $(<:.c=.o)

$(NAME): 	$(OBJS)
			ar rc  $(NAME) $(OBJS)
			ranlib $(NAME)

all:		$(NAME)

clean:
			${RM} ${OBJS}

fclean: 	clean
			$(RM) $(NAME) 
re:			fclean all

.PHONY:		clean fclean all re b

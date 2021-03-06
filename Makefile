NAME	=	libft.a

SRC		=	ft_isalpha.c\
			ft_memcmp.c\
			ft_putstr_fd.c\
			ft_strlen.c\
			ft_tolower.c\
			ft_isascii.c\
			ft_memcpy.c\
			ft_split.c\
			ft_strmapi.c\
			ft_toupper.c\
			ft_isdigit.c\
			ft_memmove.c\
			ft_strchr.c\
			ft_strncmp.c\
			ft_atoi.c\
			ft_isprint.c\
			ft_memset.c\
			ft_strdup.c\
			ft_strnstr.c\
			ft_bzero.c\
			ft_itoa.c\
			ft_putchar_fd.c\
			ft_strjoin.c\
			ft_strrchr.c\
			ft_calloc.c\
			ft_memccpy.c\
			ft_putendl_fd.c\
			ft_strlcat.c\
			ft_strtrim.c\
			ft_isalnum.c\
			ft_memchr.c\
			ft_putnbr_fd.c\
			ft_strlcpy.c\
			ft_substr.c\

BNS		=	ft_lstnew.c\
            ft_lstadd_front.c\
            ft_lstsize.c\
            ft_lstlast.c\
            ft_lstadd_back.c\
            ft_lstdelone.c\
            ft_lstclear.c\
            ft_lstiter.c\
            ft_lstmap.c

headers	=	libft.h

OBJS	= $(SRC:.c=.o)

B_OBJS	= $(BNS:.c=.o)

$(NAME): $(headers)
	gcc -Wall -Wextra -Werror -c $(SRC) -I $(headers)
	ar rc $(NAME) $(OBJS)

all:	$(NAME)

bonus:
	gcc -Wall -Wextra -Werror -c $(BNS) -I $(headers)
	ar rc $(NAME) $(B_OBJS)

clean:
	rm -rf $(OBJS) $(B_OBJS)

fclean: clean
	rm -rf libft.a

re: fclean all

.PHONY:		all clean fclean re

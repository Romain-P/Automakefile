##
## Makefile for  in /home/romain.pillot/projects/n4s
## 
## Made by romain pillot
## Login   <romain.pillot@epitech.net>
## 
## Started on  Sun Jun  4 17:02:11 2017 romain pillot
## Last update Mon Jun 26 14:04:19 2017 romain pillot
##

CC	=	gcc

NAME	=	unused	\

RM	=	rm -f

OBJS	=	$(SRCS:.c=.o)

SRCS	=	\
		src/main.c	\


CFLAGS	+=	-I. -Werror -Wall -Wextra

all:	$(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

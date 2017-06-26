CC	=	clang

NAME	=	fakeProj

RM	=	rm -f

CFLAGS	=	-ftest-coverage -O2 -Iinclude

LDFLAGS	=	 -Llibs

SRCS	= 	\
		./main.c \
		./calc.c \


OBJS	=	$(SRCS:.c=.o)
all:	$(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME) $(CFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

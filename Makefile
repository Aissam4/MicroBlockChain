SRC_FILE = main.cpp Block.cpp BlockChain.cpp sha256.cpp

OBJ_FILE = $(SRC_FILE:.cpp=.o)

NAME = Block

CC = c++

FLAGS = -Wall -Wextra -Werror -std=c++98

all:$(NAME)
%.o:%.cpp
	$(CC) $(FLAGS) -c $< -o $@
$(NAME) : $(OBJ_FILE)
	$(CC) $(FLAGS) $(OBJ_FILE) -o $(NAME)
clean :
	rm -rf $(OBJ_FILE)
fclean :
	rm -rf $(OBJ_FILE) $(NAME)
re : fclean all
.PHONY : clean fclean re
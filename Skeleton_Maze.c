#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>


// this will be our coordinates within the 2D array

typedef struct {
    int x;
    int y;
} Position;

typedef struct {
    int width;
    int height;
    Position start;
    Position end;
    Position player;
} Maze;


int main(int argc, char *argv[]){
    
    // setup 
    // ensure that the there is only two arguments
    // ensure that the file exists and is of the correct format

    // present the user with descriptions of W,A,S,D,Q,M

    // initialise start_positions and end_positions which will be fixed once found within the file
    // initialise 

    //Switch Case containing all the possible options W,A,S,D,Q,M and their functions
    // if currrent position = end position we end the game and return a message

    int read_in_file(filename){

        // iterate through it and read in the characters
        // create a counter with a for loop to check the height and width
        // if not consistent print out error
    }
    void check_file_name(// wait for pointers knoledge){
        // iterate through it and check the contents of the file
        // ensure that only valid characters are within it
        // ensure that there is only one instance of S&E
    }
    void initalize_2D_array(){
        // define a 2D array based of the counter from read in file
        // allocate these values into each section of the 2d-array in order


    }
    int StartPosition_2d_array(){
        // iterate through the arrays and find the start position
        // Create an instance of "Start" and have Start.Position_x and Start.Positon_y
        // return both these values
    }

    int EndPosition_2d_array(){
        // iterate through the arrays and find the start position
        // Create an instance of "Start" and have End.Position_x and End.Positon_y
        // return both these values
    }

    int CurrentPosition_2d_array(){
        // This value will be constantly changing based off the input from user
        // Update this based off W/A/S/D
        // initialise this to Current Current.Position._x and End.Position_y
        
    }

    void Move_Down(){
        
        // Will happen when W/w is Entered 
        // subtract 1 away from our y value for current position
        // check what character is at this new position
        // validate if its empty , wall,end or out of bounds
        // replace this value if its empty with the x and replace the old x with empty space
        // if its a wall keep the character in their positions and print out an error message saying theres a wall there
        // if its exit print success and quit
        // if its not within the 2-d array print out error message saying out of bound

    }
    void Move_Down(){
        
        // Will happen when S/s is entered 
        // add 1 to  our y value for current position
        // check what character is at this new position
        // validate if its empty , wall,end or out of bound
        // replace this value if its empty with the x and replace the old x with empty space
        // if its a wall keep the character in their positions and print out an error message saying theres a wall there
        // if its not within the 2-d array print out error message saying out of bound
        // if its exit print success and quit
    
     void Move_Left(){
        
        // Will happen when A/a is entered 
        // Subtract 1 from out X value for current position
        // check what character is at this new position
        // validate if its empty , wall,end or out of bound
        // replace this value if its empty with the x and replace the old x with empty space
        // if its a wall keep the character in their positions and print out an error message saying theres a wall there
        // if its not within the 2-d array print out error message saying out of bound
        // if its exit print success and quit
     }
    
     void Move_Right(){
        
        // Will happen when D/d is entered 
        // add 1 to  our X value for current position
        // check what character is at this new position
        // validate if its empty , wall,end or out of bound
        // replace this value if its empty with the 'X' and replace the old x with empty space
        // if its a wall keep the characters in their positions and print out an error message saying theres a wall there
        // if its not within the 2-d array print out error message saying out of bound
        // if its exit print success and quit
     }

     void print_out_string(){
        // will happen when M/m is pressed
        // Iterate through the 2d-array and print out all the values
     }

     int Verify_win(){
        // if start position = end position its a win
        // Exit programme
     }


}
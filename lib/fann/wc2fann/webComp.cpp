/*
Kirolos Shahat, Aaron Barlow, David DaSilva
webComp.cpp
The purpose of this program is to open up two files titled
'ascii_1.txt' and 'ascii_2.txt' and convert those images into
their appropriate number values and print those numbers into a
created output file titled either 'selection.train' or
'selection.test' depending on if a command line argument was given
or not. If a command line argument was given, the argument would be an int
which represents the superior website to choose indicating that the Neural
Network would still be in training and that number needs to be printed in the
output file 'selection.train'
The first line of both output files is the topology for the Neural network.
*/

//the header files used in the program
#include <iostream>
#include <cstdlib>
#include <queue>
#include <cstddef>
#include "functions.h"

using namespace std;

//the command line arguments. Can either be 1 or 2 arguments
int main(int argc, char* argv[]){
	Data *files;
	//Defining the names of the ascii images as strings to be called later
	string asciiOne = "./lib/fann/wc2fann/data/ascii_1.txt";
	string asciiTwo = "./lib/fann/wc2fann/data/ascii_2.txt";
	bool chooseNN;

	//if there is something added with the program executable
	//then it is the superior image meaning that the NN is still
	//in training.
	if(argc == 2){
		chooseNN = false;
		//calling the constructor for the class Data with the three
		//image names that are associated. This opens three files with
		//the names associated
		files = new Data(asciiOne, asciiTwo, "./lib/fann/wc2fann/data/selection.train");
		//calls the createOutputFile file function which converts each values
		//in each ascii text file into it's appropriate number value and writes
		//it to 'selection.train' is also passed a boolean so that
		//it can distinguish between either training or testing, and the
		//value that the NN should be choosing and writes that into the file aswell
		writeOutput(files, chooseNN, argv); //if NN is called change
		//false to testNN and remove the comments above and below
	}
	//there are no command line arguments and the NN is being tested
	else{
		chooseNN = true;
		//calling the constructor for the class Data with the three
		//image names that are associated. This opens three files with
		//the names associated
		files = new Data(asciiOne, asciiTwo, "./lib/fann/wc2fann/data/selection.test");
		//calls the createOutputFile file function which converts each values
		//in each ascii text file into it's appropriate number value and writes
		//it to 'selection.train' is also passed a boolean so that
		//it can distinguish between either training or testing
		writeOutput(files, chooseNN);
	}
	chooseNN ? testNN() : trainNN();
}

/*void createOutputFile(Data* files, bool testNeural, char** superiorSite){
	writeOutput(files, testNeural, superiorSite);
	//files->output << endl;
	//if(!testNeural) files->output << superiorSite[1] << endl;
	delete files;
}*/

void writeOutput(Data *files, bool testNeural, char** superiorSite){
  queue<string> tempF1, tempF2;
	string f1, f2;
	int len, i;

	while(getline(files->imgOne, f1)){
		tempF1.push(f1);
	}

	while(getline(files->imgTwo, f2)){
		tempF2.push(f2);
	}

	while( !tempF1.empty() ){
		len = tempF1.front().length();
		for (i = 0; i< len; i++){
			if(( tempF1.front() )[i] == ' ')
				files->output << "0.255";
			else
				files->output << "0." << (int)(tempF1.front())[i];
			files->output << " ";
		}
		tempF1.pop();
	}

	if(!testNeural)
		files->output << endl << superiorSite[1] << endl;
	else
		files->output << endl << "1" << endl;

	while( !tempF2.empty() ){
		len = tempF2.front().length();
		for (i = 0; i< len; i++){
			if(( tempF2.front() )[i] == ' ')
				files->output << "0.255";
			else
				files->output << "0." << (int)(tempF2.front())[i];
			files->output << " ";
		}
		tempF2.pop();
	}

	if(!testNeural)
		files->output << endl << superiorSite[1] << endl;
	else
		files->output << endl << "1" << endl;

	delete files;
}



/*
	TrainNN
	Uses a FANN library tools for creating an Artificial Neural Network and reads data
	specifically formatted for the the library:
	------
	x y z
	i j
	l
	-----
	x - amount of input neurons
	y - total number of values on the line
	z - number of output neurons
	i - pattern one or ascii_i
	j - pattern two or ascii_2
	l - the 1 or 2 choice

 	The function begins by creating a ANN from the given parameters, and reading the
	output into format suitable for the library . If the network has appropriate parameters
	the program runs fann train on data which utilizes the RPROP algorithim. It initializes the
	weights based on the number of epochs (or training sets) that the tester chooses.
	To test the compatibilty of the data with the network structure, terminal output is shown
	to signal whether the Network has changed and can be tested on. The main product of the
	train function is the configuration file. web_comp_config becomes the building block
	for the function that is to be used in the testing phase.
*/
void trainNN(){

  //fann requirements
	fann_type *calc_out;
	const unsigned int num_input = 2;
	const unsigned int num_output = 1;
	const unsigned int num_layers = 3;
	const unsigned int num_neurons_hidden = 3;
	const float desired_error = (const float) 0;
	const unsigned int max_epochs = 1000;
	const unsigned int epochs_between_reports = 10;
	struct fann *ann;
	struct fann_train_data *data;

	unsigned int i = 0;
	unsigned int decimal_point;

	//back end output for verifying proper performance of training the network
	cout << "Creating network.\n";
	//creates a Network Structure using the given parameters listed above
	ann = fann_create_standard(num_layers, num_input, num_neurons_hidden, num_output);

	data = fann_read_train_from_file("./lib/fann/wc2fann/data/selection.train");

	fann_set_activation_steepness_hidden(ann, 1);
	fann_set_activation_steepness_output(ann, 1);
  //FANN_SIGMOID_SYMMETRIC is used to constrain the value of each neuron
	fann_set_activation_function_hidden(ann, FANN_SIGMOID_SYMMETRIC);
	fann_set_activation_function_output(ann, FANN_SIGMOID_SYMMETRIC);
  //stops the training in the case that the output neurons differ too greatly
	//from the desired_error limit
	fann_set_train_stop_function(ann, FANN_STOPFUNC_BIT);
	fann_set_bit_fail_limit(ann, 0.01f);

	fann_set_training_algorithm(ann, FANN_TRAIN_RPROP);

	fann_init_weights(ann, data);

	cout << "Training network.\n";
	fann_train_on_data(ann, data, max_epochs, epochs_between_reports, desired_error);

	cout << "Testing network. " << fann_test_data(ann, data) << endl;

	for(i = 0; i < fann_length_train_data(data); i++){
			calc_out = fann_run(ann, data->input[i]);

			cout << "Web_Comp test ("<< data->input[i][0] << " , " << data->input[i][1]<< ") ->"<< calc_out[0]
			<<", should be" << data->output[i][0] << ", difference=" << fann_abs(calc_out[0] - data->output[i][0])) << endl;
	}


	cout << "Saving network.\n";
  //configuration file created for testNN function
	// see the madness in web_comp_config.net
	fann_save(ann, "./lib/fann/wc2fann/data/web_comp_config.net");

	decimal_point = fann_save_to_fixed(ann, "./lib/fann/wc2fann/data/web_comp_fixed.net");
	fann_save_train_to_fixed(data, "./lib/fann/wc2fann/data/web_comp_fixed.data", decimal_point);

	cout << "Cleaning up.\n";
	fann_destroy_train(data);
	fann_destroy(ann);
}

/*
	TestNN
	Uses a FANN library tools for opening a Network configuration file
	created in the trainNN function and it runs trials on the selection data.
	The desired end product is an answer between 0 and 1 where 0 refers to the
	first image and 1 refers to the second image. Confidence is given
	through the subtracted difference between the desired output and the calculated
	output.

	Testing data must follow this structure:
	------
	x y z
	i j
	l
	-----
	x - amount of input neurons
	y - total number of values on the line
	z - number of output neurons
	i - pattern one or ascii_i
	j - pattern two or ascii_2
	l - the 1 or 2 choice

	The product created from this function comes in two forms:
	1 - On the terminal side, the connections and the testing results are printed
	out with details on what two values are being compared, what the output should be
	and what the difference was between the NN's output and the desired output.
	2 - When testing is successful, an external data file called Web_Comp_Answer
	is overwritten with two peices of information, the NNdata output and the
	difference between the desired output and the actual output.
*/

void testNN(){
        fann_type *calc_out;
        unsigned int i;
        int ret = 0;

        struct fann *ann;
        struct fann_train_data *data;

        printf("Creating network.\n");

#ifdef FIXEDFANN
				//creates an instance of the network based on the current configuration file
				//found in the directory
        ann = fann_create_from_file("./lib/fann/wc2fann/data/web_comp_fixed.net");
#else
        ann = fann_create_from_file("./lib/fann/wc2fann/data/web_comp_config.net");
#endif

        if(!ann)
        {
					//if the configuratin file is missing or otherwise, the
					//terminal side of the project reads an error and the
				  //webcomp output on the website will read an error message
        	cout << "Error creating ann --- ABORTING.\n";
        	exit(-1);
        }

        fann_print_connections(ann);
        fann_print_parameters(ann);

        cout << "Testing network.\n";

				//reads the testing data into the network configuration
#ifdef FIXEDFANN
        data = fann_read_train_from_file("./lib/fann/wc2fann/data/web_comp_fixed.data");
#else
        data = fann_read_train_from_file("./lib/fann/wc2fann/data/selection.test");
#endif
				//creates an calculated output from the configuration
        for(i = 0; i < fann_length_train_data(data); i++)
        {
                fann_reset_MSE(ann);
                calc_out = fann_test(ann, data->input[i], data->output[i]);
#ifdef FIXEDFANN
								//terminal output for the test
								// includes the two patterns that are being compared to one another
								// the desired output and the difference
								// it loops based on the length of the selectin data
								cout << "Web_Comp test ("<< data->input[i][0] << " , " << data->input[i][1]<< ") ->"<< calc_out[0]
					 			<<", should be" << data->output[i][0] << ", difference=" << fann_abs(calc_out[0] - data->output[i][0])/ fann_get_multiplier(ann) << endl;

                if((float) fann_abs(calc_out[0] - data->output[i][0]) / fann_get_multiplier(ann) > 0.2)
                {
                        cout << "Test failed\n";
                        ret = -1;
                }
#else

								cout << "Web_Comp test ("<< data->input[i][0] << " , " << data->input[i][1]<< ") ->"<< calc_out[0]
					 			<<", should be" << data->output[i][0] << ", difference=" << fann_abs(calc_out[0] - data->output[i][0])) << endl;

      //sending the selection Web_Comp_Answer
			// it takes the first line of output data from the network sends it to the
			// answer data file as well as the confidence level
			int answer = fann_abs(data->output[0][0]);
			double error_percentage = fann_abs(calc_out[0] - data->output[i][0]);
			ofstream output;
			output.open("./lib/fann/wc2fann/data/Web_Comp_Answer.txt");
			output << answer << " " << error_percentage;
			output.close();

#endif
        cout << "Cleaning up.\n";
        fann_destroy_train(data);
        fann_destroy(ann);

        exit(ret);
			}
		}

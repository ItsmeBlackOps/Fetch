
This repository contains the source code for a take-home exam for Fetch Rewards. The assignment involves building a server using Go and implementing two endpoints:

The /receipts/process endpoint accepts a Receipt JSON object via a POST request. The server parses the receipt object and calculates the points based on a predefined set of rules. The endpoint returns a JSON object containing the ID of the submitted receipt, which can be used for later reference.

The /receipts/{id}/points endpoint retrieves the points associated with a previously submitted receipt. The ID of the receipt is passed as a parameter in the endpoint's path. The endpoint returns a JSON object containing the total points earned by the receipt.

The server handles various error cases, such as missing attributes in the JSON body of the POST request, errors in parsing date and time attributes, and internal server errors.

It's worth noting that the code related to this assignment can be found in the file fetch-points.go

STEPS TO REPRODUCE THE RESULTS:
1. Git clone the project using the command "git clone https://github.com/rudra717/Fetch-rewards-assesment.git" <br>
2. Open Terminal and go to the repository <br>
3. Build the Docker image using the following command: docker build -t receipt-api . <br>
This command builds the Docker image and tags it as receipt-api <br>
4. Run the Docker container from the image: docker run -p 8080:8080 receipt-api <br>
5. Now, the Go application should be running inside the Docker container, and you can access and try the API using different examples by sending requests to http://localhost:8080 using POSTMAN or cURL <br>
/receipts/process endpoint --> POST: http://localhost:8080/receipts/process <br>
/receipts/{id}/points endpoint --> GET: http://localhost:8080/receipts/{id}/points <br>



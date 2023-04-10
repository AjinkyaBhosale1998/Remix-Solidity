pragma solidity >= 0.7.0 < 0.9.0;

contract learnStruct { 

    struct Movie {
        string title;
        string director;
        uint movie_id;
    }

    Movie movie;
    Movie comedy;


    function setMovie() public  {
       // movie = Movie('ZNMD', 'Elon Musk',18);
        comedy = Movie('phir hera pheri' ,'Babu Bhaiya',1);
    }

    function getMovie() public view returns(uint) {
        return comedy.movie_id;
    }

    function getMovies() public view returns(string memory) {
        return comedy.title;
    }
}
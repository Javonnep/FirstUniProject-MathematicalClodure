ArrayList<Character> lastTwoClicks; //<>// //<>// //<>//
boolean naturalclicked;
boolean intClicked;
boolean ratioClicked;
boolean irratioClicked;
boolean compClicked;
boolean addClicked;
boolean minusClicked;
boolean divideClicked;
boolean sqrtClicked;
boolean multiClicked;

void setup()
{
    size(850, 1000);  //700x1000
    textSize(24);
    lastTwoClicks = new ArrayList();
}

void keyPressed()
{
    lastTwoClicks.add(key);
}

void draw()
{    
    // starting info
    fill(0);    
    text("Natural Numbers", 10, height/9);
    text("-", 800, height/9);
    text("√", 800, height *2/9 ); 
    text("+", 800, height *3/9 ); 
    naturalclicked = true;
    addClicked = true;
    minusClicked = true;

    // bottom menu info to explain controls
    text("1 for Natural Numbers, 2 for Integers, 3 for Rational numbers", (10), (height* 8/9) );
    text("4 for Irrational numbers, 5 for Real numbers, 6 for Complex Numbers,  ", 10, ((height *8/9)+ 35) );
    text("7 is add, 8 is subtract (or negative numbers), 9 is Divide, 0 is SQROOT", 10, ((height *8/9) + 70) ); 

    // key combo to unlock set of integers
    ArrayList<Character> subtract  = new ArrayList();
    subtract.add('8');
    subtract.add('8');

    // key combo to unlock set of integers
    ArrayList<Character> integers  = new ArrayList();
    integers.add('1');
    integers.add('8');

    // key combo for rational numbers
    ArrayList<Character> rational = new ArrayList();
    rational.add('1');
    rational.add('9');

    // 2nd key combo for rational numbers
    ArrayList<Character> rational2 = new ArrayList();
    rational2.add('2');
    rational2.add('9');

    // key combo for irrational numbers
    ArrayList<Character> irrational = new ArrayList();
    irrational.add('1');
    irrational.add('0');

    // 2nd key combo for irrational numbers
    ArrayList<Character> irrational2 = new ArrayList();
    irrational2.add('2');
    irrational2.add('0');

    // 3nd key combo for irrational numbers
    ArrayList<Character> irrational3 = new ArrayList();
    irrational3.add('3');
    irrational3.add('0');

    // key combo for copmlex numbers
    ArrayList<Character> complex = new ArrayList();
    complex.add('8');
    complex.add('0');

    // key combo for multiplication
    ArrayList<Character> multiplication = new ArrayList();
    multiplication.add('7');
    multiplication.add('7');

    // if statement to ensure array stays at 2 elements max

    if (lastTwoClicks.size() > 2)                                     
    {     
        lastTwoClicks.remove(0);
    }

    //------------------------------------------------------------------------------------------------elif statement check that integers key-combo matches the last keys pressed
    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((integers.get(0) == lastTwoClicks.get(0) && 
        integers.get(1) == lastTwoClicks.get(1)) ||
        (integers.get(1) == lastTwoClicks.get(0) &&
        integers.get(0) == lastTwoClicks.get(1))))   
    {        
        println("integers have been added");
        text("Integers", 10, height*2/9 );
        intClicked = true;
    }

    //------------------------------------------------------------------------------------------------elif statement check that integers key-combo matches the last keys pressed
    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((multiplication.get(0) == lastTwoClicks.get(0) && 
        multiplication.get(1) == lastTwoClicks.get(1)) ||
        (multiplication.get(1) == lastTwoClicks.get(0) &&
        multiplication.get(0) == lastTwoClicks.get(1))))   
    {        
        println("multiplication has been added");
        text("X", 800, height*5/9 );
        multiClicked = true;
    }


    //------------------------------------------------------------------------------------------------else if combo to check for rational numbers

    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((rational.get(0) == lastTwoClicks.get(0) && 
        rational.get(1) == lastTwoClicks.get(1)) ||
        (rational.get(1) == lastTwoClicks.get(0) &&
        rational.get(0) == lastTwoClicks.get(1))))   
    {        
        println("rational numbers have been added");
        text("rational", 10, height*3/9 );
        ratioClicked = true;
    }

    //------------------------------------------------------------------------------------------------2nd else if combo to check for rational numbers 
    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((rational2.get(0) == lastTwoClicks.get(0) && 
        rational2.get(1) == lastTwoClicks.get(1)) ||
        (rational2.get(1) == lastTwoClicks.get(0) &&
        rational2.get(0) == lastTwoClicks.get(1))))   
    {        
        println("rational numbers have been added");
        text("rational", 10, height* 3/9 );
        ratioClicked = true;
    } 

    //------------------------------------------------------------------------------------------------else if combo to check for irrational numbers 
    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((irrational.get(0) == lastTwoClicks.get(0) && 
        irrational.get(1) == lastTwoClicks.get(1)) ||
        (irrational.get(1) == lastTwoClicks.get(0) &&
        irrational.get(0) == lastTwoClicks.get(1))))   
    {        
        println("irrational numbers have been added");
        text("Irrational", 10, height* 4/9 );
        irratioClicked = true;
    }    

    //------------------------------------------------------------------------------------------------2nd else if combo to check for irrational numbers 
    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((irrational2.get(0) == lastTwoClicks.get(0) && 
        irrational2.get(1) == lastTwoClicks.get(1)) ||
        (irrational2.get(1) == lastTwoClicks.get(0) &&
        irrational2.get(0) == lastTwoClicks.get(1))))   
    {        
        println("irrational numbers have been added");
        text("irrational", 10, height* 4/9 );
        irratioClicked = true;
    }

    //------------------------------------------------------------------------------------------------3rd else if combo to check for irrational numbers 
    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((irrational3.get(0) == lastTwoClicks.get(0) && 
        irrational3.get(1) == lastTwoClicks.get(1)) ||
        (irrational3.get(1) == lastTwoClicks.get(0) &&
        irrational3.get(0) == lastTwoClicks.get(1))))   
    {        
        println("irrational numbers have been added");
        text("irrational", 10, height* 4/9 );
        irratioClicked = true;
    }    

    //------------------------------------------------------------------------------------------------else if combo to check for complex numbers 
    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((complex.get(0) == lastTwoClicks.get(0) && 
        complex.get(1) == lastTwoClicks.get(1)) ||
        (complex.get(1) == lastTwoClicks.get(0) &&
        complex.get(0) == lastTwoClicks.get(1))))   
    {        
        println("complex numbers have been added");
        text("complex", 10, height* 6/9 );
        compClicked = true;
    }

    //------------------------------------------------------------------------------------------------else if combo to check for division
    else if (                                                        
        lastTwoClicks.size() == 2 &&
        ((subtract.get(0) == lastTwoClicks.get(0) && 
        subtract.get(1) == lastTwoClicks.get(1)) ||
        (subtract.get(1) == lastTwoClicks.get(0) &&
        subtract.get(0) == lastTwoClicks.get(1))))   
    {        
        println("division has been added");
        text("÷", 800, height *4/9 );
        divideClicked = true;
    }

    //------------------------------------------------------------------------------------------------else if combo to check for all real numbers
    else if 
        (
        naturalclicked == true &&
        intClicked == true &&
        ratioClicked == true &&
        irratioClicked == true         
        ) 
    {
        text("Real", 10, height*5/9 );
    }

    //------------------------------------------------------------------------------------------------else if combo to check for all the game being complete
    else if 
        (
        naturalclicked == true &&
        intClicked == true &&
        ratioClicked == true &&
        irratioClicked == true &&
        compClicked == true && 
        multiClicked == true &&
        addClicked== true && 
        minusClicked == true && 
        divideClicked == true && 
        sqrtClicked == true
        )
    {
        noLoop();
        println("YOU HAVE CLOSED ALL OF MATHEMATICS. WELL DONE");
    }
}


//---------------------------------------------------------------------------------

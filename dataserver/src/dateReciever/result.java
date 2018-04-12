package dateReciever;

public class result {
public String cpu;
public String gcard;
public double score;
public double price;

public result(){
	cpu="";
	gcard="";
	score=0;
	price=0;
}

public void getcpu(hardware hd){
	cpu=hd.name;
	score+=hd.score;
	price+=hd.price;
}
public void getgcard(hardware hd){
	gcard=hd.name;
	score+=hd.score;
	price+=hd.price;
	
}
}

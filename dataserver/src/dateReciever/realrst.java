package dateReciever;

public class realrst {
	hardware mb;
	hardware[]other;
	double price;
	double score;
	public realrst(){}
	public realrst(hardware a,hardware[]b){
		mb=a;other=b;
		price=0;
		score=0;
	}
	public void setPrice(double a){
		for(int i=0;i<other.length;i++){
			if(other[i]!=null){
				price+=other[i].price;
				score+=other[i].score;
			}
		}
		price+=mb.price;
		price=price*6.81+a;
		
		
	}

}

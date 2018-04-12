package dateReciever;

public class individual {
	int cpu,gcard;
//	int harddrive;
	double fitness;
	double totalsc;
	double totalcost;
	double newfitness;
	
	
	
	//构造函数
	public individual(int a,int b){
		cpu=a;gcard=b;
		
//		harddrive=c;
	}
	
	//拷贝构造函数
	public individual(individual parent){
		cpu=parent.cpu;
		gcard=parent.gcard;
//		harddrive=parent.harddrive;
		fitness=parent.fitness;
		totalsc=parent.totalsc;
		totalcost=parent.totalcost;
	}
	
	//适应度计算
	public void fit(hardware cpu,hardware gcard){
		double ratio=(cpu.score*35+gcard.score*65)/((cpu.price+gcard.price)*100);
		
		totalsc=cpu.score*0.35+gcard.score*0.65;
		totalcost=cpu.price+gcard.price;
//		fitness=ratio*50;
		fitness=ratio*100+(totalsc/50)*30;
	}
	
	
	//变异操作
	public void mutate(double budget,hardware[]cpus,hardware[]gcards){
		fit(cpus[cpu],gcards[gcard]);
		double temp;
		do{
			newcost(cpus,gcards);
			temp=cpus[cpu].price+gcards[gcard].price;
		}while(budget<temp);//budget<cpus[cpu].price+gcards[gcard].price||newfitness<fitness
		fit(cpus[cpu],gcards[gcard]);
		
	}
	
	//变异后新成本计算
	public void newcost(hardware[]cpus,hardware[]gcards){
		int select=(int)(1+Math.random()*2);
		
		switch(select){
		case 1:cpu=(int)(Math.random()*(cpus.length));break;
		case 2:gcard=(int)(Math.random()*(gcards.length));break;
		
		}
//		return cpus[cpu].price+gcards[gcard].price+harddrives[harddrive].price;
		int a=cpu;
		int b=gcard;
		double ratio=(cpus[cpu].score*35+gcards[gcard].score*65)/((cpus[cpu].price+gcards[gcard].price)*100);
		double ttsc=cpus[cpu].score*0.35+gcards[gcard].score*0.65;
		
		newfitness=ratio*50;
		newfitness=ratio*100+(ttsc/50)*30;
	}

}

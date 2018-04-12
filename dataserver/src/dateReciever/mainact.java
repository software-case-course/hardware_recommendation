package dateReciever;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Queue;

import org.json.JSONException;
import org.json.JSONObject;

import com.mysql.jdbc.Connection;

public class mainact {
public hardware[] mb,tmb;

public int cpu_level;
public int gpu_level;
public int rom_level;
public int ram_level;
public double budget;
public double lowest;
public JSONObject resultjson;
public String rjson1;
public String rjson2;
public String rjson;

private double rate=6.81;

public mainact(String input){
	resultjson=new JSONObject();
//	String json="";
	lowest=Double.MAX_VALUE;
	
	try {
	JSONObject obj=new JSONObject(input);
	cpu_level=obj.getInt("cpu_level");
	gpu_level=obj.getInt("gpu_level");
	rom_level=obj.getInt("rom_level");
	ram_level=obj.getInt("ram_level");
	budget=obj.getDouble("budget");
//	System.out.println(cpu_level+gpu_level+rom_level+ram_level+budget);
} catch (JSONException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	
	//初始化主板信息
	initmb();
	double othercost=0;
	
	try{
	switch(rom_level){
	case 1:othercost+=400;resultjson.put("rom", "128GB SSD");break;
	case 2:othercost+=750;resultjson.put("rom", "128GB SSD+1TB HDD");break;
	case 3:othercost+=350;resultjson.put("rom", "1TB HDD");break;
	case 4:othercost+=600;resultjson.put("rom", "256GB SSD");break;
	case 5:othercost+=1200;resultjson.put("rom", "512GB SSD");break;
	}
	switch(ram_level){
	case 1:othercost+=200;resultjson.put("ram", "4GB");break;
	case 2:othercost+=400;resultjson.put("ram", "8GB");break;
	case 3:othercost+=800;resultjson.put("ram", "16GB");break;
	}}
	catch(JSONException e){
		e.printStackTrace();
	}
//	output(mb);
//	output(tmb);
//	System.out.println("新主板");
//	output(mb);
//	System.out.println("垃圾主板");
//	output(tmb);
	Queue<hardware[]>qmb=new LinkedList<hardware[]>();
	Queue<hardware[]>qtmb=new LinkedList<hardware[]>();
	Queue<realrst>qmb1=new LinkedList<realrst>();
	Queue<realrst>qtmb1=new LinkedList<realrst>();
	
	budget=(budget-othercost)/6.81;
	
//	calculate one=new calculate(cpu_level,gpu_level,budget);
	for(int i=0;i<mb.length;i++){
		calculate one=new calculate(cpu_level,gpu_level,budget-mb[i].price);
		hardware temp=mb[i];
		hardware[]temp1=one.initiate(mb[i]);
		qmb.offer(temp1);
		realrst temp2=new realrst(temp,temp1);
		temp2.setPrice(othercost);
		qmb1.offer(temp2);
		lowest=(lowest<one.lowest+mb[i].price)?lowest:one.lowest+mb[i].price;
	}
	for(int i=0;i<tmb.length;i++){
		calculate one=new calculate(cpu_level,gpu_level,budget-tmb[i].price);
		hardware temp=tmb[i];
		hardware[]temp1=one.initiate(tmb[i]);
		qtmb.offer(temp1);
		realrst temp2=new realrst(temp,temp1);
		temp2.setPrice(othercost);
		qtmb1.offer(temp2);
		lowest=(lowest<one.lowest+mb[i].price)?lowest:one.lowest+mb[i].price;
	}
	
	
	realrst mbhigh=selecthigh(qmb1);
	realrst tmbhigh=selecthigh(qtmb1);
	if(mbhigh==null&&tmbhigh==null){
		double ttcst=lowest*rate+othercost;
//		rjson="按条件筛选出的配置方案最低价为："+ttcst;
		rjson="根据数据库当前收录数据无法产生推荐方案："+ttcst;
		try {
			resultjson.put("lowest", ttcst);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(resultjson);
		
	}
	else{
		try{
			resultjson.put("lowest", 0);
		if(mbhigh!=null){
			resultjson.put("mb", mbhigh.mb.name+"+"+mbhigh.mb.slot);
			resultjson.put("cpu1", mbhigh.other[0].name);
			if(mbhigh.other.length>1){
			if(!mbhigh.other[1].name.equals("")){resultjson.put("gcard1", mbhigh.other[1].name);}}
			resultjson.put("score1", mbhigh.score);
			resultjson.put("price1", mbhigh.price);
			rjson1=resultjson.toString();
			}
		if(tmbhigh!=null){
			resultjson.put("tmb", tmbhigh.mb.name+"+"+tmbhigh.mb.slot);
			resultjson.put("cpu2", tmbhigh.other[0].name);
			if(tmbhigh.other.length>1){
			if(!tmbhigh.other[1].name.equals("")){resultjson.put("gcard2", tmbhigh.other[1].name);}}
			resultjson.put("score2", tmbhigh.score);
			resultjson.put("price2", tmbhigh.price);
			rjson2=resultjson.toString();
		}
		}
		catch(JSONException e){
			e.printStackTrace();
		}
		
		JSONObject outcome=new JSONObject();
		try {
			outcome.put("mb", rjson1);
			outcome.put("tmb", rjson2);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rjson=outcome.toString();
		System.out.println(resultjson);
	}
}

//挑选最大值
public realrst selecthigh(Queue<realrst> a){
	realrst high=new realrst();
	high.score=0;
//	boolean bmb=false;
	while(!a.isEmpty()){
		realrst temp=a.poll();
		high=(high.score>temp.score)?high:temp;
//		while(!temp.other.isEmpty()){
//			hardware[] temp=a.poll();
//			result temp1=new result();
//			for(int i=0;i<temp.length;i++){
//				if(temp[i]!=null){bmb=true;}
//				if(i==0&&temp[i]!=null){
//					temp1.getcpu(temp[i]);
//				}
//				if(i==1&&temp[i]!=null){
//					temp1.getgcard(temp[i]);
//				}
//			}
//			high=(high.score>temp1.score)?high:temp1;
//		}
	}
	
	if(high.score>0){
	return high;}
	else{
		return null;
	}
}

public void initmb(){
	Connection con;
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/hardware";
	String user="root";
	String password="5XD@IDp4FN";
	Queue<hardware>mbini=new LinkedList<hardware>();
	try{
		Class.forName(driver);
		con=(Connection) DriverManager.getConnection(url, user, password);
		if(!con.isClosed()){
			System.out.println("连接数据库成功");
		}
		Statement stmt=con.createStatement();
		String sql="select * from mainboard";
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
			hardware temp=new hardware(rs.getString("name"),Double.parseDouble(rs.getString("price")),0);
			temp.slot=rs.getString("slot");
			temp.trashtag=(rs.getString("trashtag").equals("0"))?false:true;
			mbini.offer(temp);
		}
	    con.close();
	    
	    Queue<hardware>MB=new LinkedList<hardware>();
	    Queue<hardware>TMB=new LinkedList<hardware>();
	    
	    while(!mbini.isEmpty()){
	    	hardware temp=mbini.poll();
	    	if(temp.trashtag){
	    		TMB.offer(temp);
	    	}
	    	else{
	    		MB.offer(temp);
	    	}
	    }
	    
	    int n=MB.size();
	    mb=new hardware[n];
	    for(int i=0;i<n;i++){
	    	mb[i]=MB.poll();
	    }
	    
	    n=TMB.size();
	    tmb=new hardware[n];
	    for(int i=0;i<n;i++){
	    	tmb[i]=TMB.poll();
	    }
	    
	}
	catch(ClassNotFoundException e){
		System.out.println("抱歉找不到驱动！");   
		e.printStackTrace();
	}
	catch(SQLException e){
		e.printStackTrace();
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		System.out.println("cpu初始化完成！");
	}
}

public void output(hardware[] hd){
	for(int i=0;i<hd.length;i++){
		System.out.println(hd[i].name);
		System.out.println(hd[i].price);
		System.out.println(hd[i].score);
	}
}
}

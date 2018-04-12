package dateReciever;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jsoup.*;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.mysql.jdbc.Connection;



public class calculate {
	
	hardware[] cpus,gcards;
	hardware[] opcpu,opgc;
//	int lcpu,lgcards,lram,lhd;
	double Budget;
	int splNum=10;
	individual[] samples;
	individual highest; 
	
	hardware[] uppercpu;
	int cpu_level,gpu_level;
	
	public double lowest;
	
	//高端cpu进入数据库
	public void uppercpuinto(){
		Connection con;
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/hardware";
		String user="root";
		String password="5XD@IDp4FN";
		try{
			Class.forName(driver);
			con=(Connection) DriverManager.getConnection(url, user, password);
			if(!con.isClosed()){
				System.out.println("连接数据库成功");
			}
			String sql = "insert into cpu (name,price,score,gpu) values(?,?,?,?)";
		    PreparedStatement pstmt;
		    for(int i=0;i<uppercpu.length;i++){
		    	Pattern numcheck=Pattern.compile("[\\s\\S]*Xeon[\\s\\S]*");
				Matcher matcher;
		    	try{
		    		pstmt = (PreparedStatement) con.prepareStatement(sql);
		    		pstmt.setString(1, uppercpu[i].name);
		    		pstmt.setString(2, String.valueOf(uppercpu[i].price));
		    		pstmt.setString(3, String.valueOf(uppercpu[i].score));
		    		matcher=numcheck.matcher(uppercpu[i].name);
		    		if(matcher.matches()){
		    			pstmt.setString(4, "no");
		    		}
		    		else{
		    			pstmt.setString(4, "yes");
		    		}
		    		pstmt.executeUpdate();
		    	}
		    	catch(SQLException e){
		    		e.printStackTrace();
		    	}
		    }
		    
		    
		    con.close();
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
			System.out.println("高端cpu搞定！");
		}
	}
	
	//数据插入mysql
	public void intoMysql(){
		Connection con;
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/hardware";
		String user="root";
		String password="5XD@IDp4FN";
		try{
			Class.forName(driver);
			con=(Connection) DriverManager.getConnection(url, user, password);
			if(!con.isClosed()){
				System.out.println("连接数据库成功");
			}
			String sql = "insert into cpu (name,price,score,gpu) values(?,?,?,?)";
		    PreparedStatement pstmt;
		    for(int i=0;i<cpus.length;i++){
		    	Pattern numcheck=Pattern.compile("[\\s\\S]*Xeon[\\s\\S]*");
				Matcher matcher;
		    	try{
		    		pstmt = (PreparedStatement) con.prepareStatement(sql);
		    		pstmt.setString(1, cpus[i].name);
		    		pstmt.setString(2, String.valueOf(cpus[i].price));
		    		pstmt.setString(3, String.valueOf(cpus[i].score));
		    		matcher=numcheck.matcher(cpus[i].name);
		    		if(matcher.matches()){
		    			pstmt.setString(4, "no");
		    		}
		    		else{
		    			pstmt.setString(4, "yes");
		    		}
		    		pstmt.executeUpdate();
		    	}
		    	catch(SQLException e){
		    		e.printStackTrace();
		    	}
		    }
		    
		    
		    sql = "insert into gcard (name,price,score) values(?,?,?)";
		    for(int i=0;i<gcards.length;i++){
		    	try{
		    		pstmt = (PreparedStatement) con.prepareStatement(sql);
		    		pstmt.setString(1, gcards[i].name);
		    		pstmt.setString(2, String.valueOf(gcards[i].price));
		    		pstmt.setString(3, String.valueOf(gcards[i].score));
		    		pstmt.executeUpdate();
		    	}
		    	catch(SQLException e){
		    		e.printStackTrace();
		    	}
		    }
		    
		    con.close();
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
			System.out.println("搞定！");
		}
	}
	
	//硬件信息初始化，数据爬取
	public hardware[] inithw(int length,String url){
		hardware[] hd = null;
		try{
			
			Stack<String>name=new Stack<String>();
			Stack<Double>price=new Stack<Double>();
			Stack<Double>score=new Stack<Double>();
			
			Document doc=Jsoup.connect(url).get();
			Elements chart=doc.select("td.chart");
//			System.out.println(chart.size());
			
			
			Pattern numcheck=Pattern.compile("([0-9]*(\\,))*[0-9]+\\.[0-9]*");
			Matcher matcher;
			int i=0;
			for(Element link:chart){
				String get=link.getElementsByTag("a").text().toString();
				i++;
				if(i>=length*2+1){break;}
//				if(get.equals("NA")){break;}
				
				get=get.replaceAll("\\$", "");
				get=get.replaceAll("\\*", "");
				get=get.replaceAll("\\,", "");
				
				
				matcher=numcheck.matcher(get);
				if(matcher.matches()||get.equals("NA")){
					if(get.equals("NA")){
						price.push((double) 0);
					}else{
					price.push(Double.parseDouble(get));}
				}
				
				else
				{
					name.push(get);
				}
			}
//			System.out.println(chart);
			
			
			
			int k=0;
			Elements value=doc.select("td.value");
			for(Element sub:value){
				k++;
				if(k>=length+1){break;}
				String grade=sub.getElementsByTag("div").text().toString();
//				System.out.println(grade.replaceAll("\\,", ""));
				score.push(Double.parseDouble(grade.replaceAll("\\,", "")));
			}
//			System.out.println(value.size());
//			System.out.println(value);
			Stack<hardware>result=new Stack<hardware>();
			
//			System.out.println(name.size());
//			System.out.println(price.size());
//			System.out.println(score.size());
			while(!price.isEmpty()){
				if(price.peek()==0){name.pop();price.pop();score.pop();continue;}
				result.push(new hardware(name.pop(),price.pop(),score.pop()));	
			}
//			System.out.println(result.size());
			hd=new hardware[result.size()];
			int j=0;
			while(!result.isEmpty()){
				hd[j]=result.pop();
				j++;
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return hd;
	}
	
	
	
	
	
	//读取数据库cpu表
	public void initcpu(){
		Connection con;
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/hardware";
		String user="root";
		String password="5XD@IDp4FN";
		Queue<hardware>cpuini=new LinkedList<hardware>();
		try{
			Class.forName(driver);
			con=(Connection) DriverManager.getConnection(url, user, password);
			if(!con.isClosed()){
//				System.out.println("连接数据库成功");
			}
			Statement stmt=con.createStatement();
			String sql="select * from cpu";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				hardware temp=new hardware(rs.getString("name"),Double.parseDouble(rs.getString("price")),Double.parseDouble(rs.getString("score")));
				temp.apu=(rs.getString("gpu").equals("yes"))?true:false;
				temp.slot=rs.getString("slot");
				cpuini.offer(temp);
			}
		    con.close();
		    
		    int n=cpuini.size();
		    cpus=new hardware[n];
		    for(int i=0;i<n;i++){
		    	cpus[i]=cpuini.poll();
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
//			System.out.println("cpu初始化完成！");
		}
	}
	
	//读取数据库gcard表
	public void initgcard(){
		Connection con;
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/hardware";
		String user="root";
		String password="5XD@IDp4FN";
		Queue<hardware>gcardini=new LinkedList<hardware>();
		try{
			Class.forName(driver);
			con=(Connection) DriverManager.getConnection(url, user, password);
			if(!con.isClosed()){
//				System.out.println("连接数据库成功");
			}
			Statement stmt=con.createStatement();
			String sql="select * from gcard";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				hardware temp=new hardware(rs.getString("name"),Double.parseDouble(rs.getString("price")),Double.parseDouble(rs.getString("score")));
				gcardini.offer(temp);
			}
		    con.close();
		    
		    int n=gcardini.size();
		    gcards=new hardware[n];
		    for(int i=0;i<n;i++){
		    	gcards[i]=gcardini.poll();
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
//			System.out.println("显卡初始化完成！");
		}
	}
	
	
	//算法初始化并运行
	public calculate(int cpulevel,int gpulevel,double budget){
		
    	initcpu();
		initgcard();
		cpu_level=cpulevel;
		gpu_level=gpulevel;
		Budget=budget;
		
//		lcpu=cpus.length;
//		lgcards=gcards.length;
//		lram=ram.length;
		
		cpuselect();
		if(gpu_level!=0){
		gpuselect();}
//		intoMysql();
//		uppercpuselect();
//		uppercpuinto();
//		output(gcards);
//		output(cpus);
		
//		System.out.println("打底金额:");
//		System.out.println(min(gcards)+min(cpus));
		
//		System.out.println("请输入预算");
//		Scanner in=new Scanner(System.in);
//		Budget=in.nextInt();
		
//		samples=new individual[splNum];
//		for(int i=0;i<splNum;i++){
////			samples[i]=new individual(i, i, i);
////			samples[i].mutate(Budget, cpus, gcards, harddrive);
//		}
//		bubblesort();
//		highest=new individual(samples[0]);
		
		
	}
	
	//初始化
	public hardware[] initiate(hardware mb){
		mbselectcpu(mb);
		if(gpu_level==0){
			hardware chosenone=null;
			for(int i=0;i<opcpu.length;i++){
				hardware temp=opcpu[i];
				if(temp.apu&&temp.price<Budget){
					chosenone=temp;break;
				}
			}
			if(chosenone!=null){
			for(int i=0;i<opcpu.length;i++){
				hardware temp=opcpu[i];
				if(temp.apu&&temp.price<Budget){
					chosenone=(chosenone.score>temp.score)?chosenone:temp;
				}
			}}
			hardware[] back=new hardware[1];
			back[0]=chosenone;
			
			lowest=min(opcpu);
			return back;
			
		}
		else{
			hardware[] back=new hardware[2];
			back[0]=null;back[1]=null;
			lowest=min(opcpu)+min(opgc);
			if(opcpu.length!=0&&Budget>lowest){
				
				
			samples=new individual[splNum];
			
			
			for(int i=0;i<splNum;i++){
				samples[i]=new individual(0,0);
				samples[i].mutate(Budget, opcpu, opgc);
			}
			bubblesort();
			highest=new individual(samples[0]);
			
			run();
			
			back[0]=opcpu[highest.cpu];
			back[1]=opgc[highest.gcard];
			}
			
			return back;
			
		}
		
		
		
	}
	
	
	//cpu过滤
	public void cpuselect(){
		int uplimit=0,downlimit=0;
		switch(cpu_level){
		case 1:downlimit=0;uplimit=5000;break;
		case 2:downlimit=5000;uplimit=7000;break;
		case 3:downlimit=7000;uplimit=10000;break;
		case 4:downlimit=10000;uplimit=Integer.MAX_VALUE;break;
		default:break;
		}
		Queue<hardware>select=new LinkedList<hardware>();
		for(int i=0;i<cpus.length;i++){
			if(cpus[i].score>=downlimit&&cpus[i].score<uplimit){
				select.offer(cpus[i]);
			}
		}
		int n=select.size();
		opcpu=new hardware[n];
		for(int i=0;i<n;i++){
			opcpu[i]=select.poll();
		}
//		lcpu=cpus.length;
	}
	
	//高端cpu过滤
	public void uppercpuselect(){
		Pattern numcheck=Pattern.compile("[\\s\\S]*Xeon[\\s\\S]*");
		Matcher matcher;
		Queue<hardware>newupper=new LinkedList<hardware>();
		for(int i=0;i<uppercpu.length;i++){
			matcher=numcheck.matcher(uppercpu[i].name);
			if(!matcher.matches()){
				newupper.offer(uppercpu[i]);
			}
		}
		uppercpu=new hardware[newupper.size()];
		int n=newupper.size();
		for(int i=0;i<n;i++){
			uppercpu[i]=newupper.poll();
		}
	}
	
	//显卡过滤
	public void gpuselect(){
		int up=0,down=0;
		switch(gpu_level){
		case 1:down=0;up=1800;break;
		case 2:down=1800;up=3500;break;
		case 3:down=3500;up=6000;break;
		case 4:down=6000;up=Integer.MAX_VALUE;break;
		default:break;
		}
		Queue<hardware>select=new LinkedList<hardware>();
		for(int i=0;i<gcards.length;i++){
			if(gcards[i].score>=down&&gcards[i].score<up){
				select.offer(gcards[i]);
			}
		}
		int n=select.size();
		opgc=new hardware[n];
		for(int i=0;i<n;i++){
			opgc[i]=select.poll();
		}
//		lgcards=gcards.length;
	}
	
	//主板挑选cpu
	public void mbselectcpu(hardware mb){
		Queue<hardware>mbcpu=new LinkedList<hardware>();
		for(int i=0;i<opcpu.length;i++){
			if(opcpu[i].slot.equals(mb.slot)){
				mbcpu.offer(opcpu[i]);
			}
		}
		int n=mbcpu.size();
		opcpu=new hardware[n];
//		System.out.println(opcpu.length);
		for(int i=0;i<n;i++){
			opcpu[i]=mbcpu.poll();
		}
//		lcpu=cpus.length;
	}
	
	//运行
	public void run(){
		GA(50);
//		System.out.println("性能最强：");
//		System.out.println(cpus[highest.cpu].name+" "+gcards[highest.gcard].name+" "+" "+"性能加权总分："+highest.totalsc+" "+"总价钱:"+highest.totalcost);
	}
	
	
	
	//迭代算法
	public void GA(int times)
	{
		for(int i=0;i<times;i++){
			for(int j=0;j<splNum/2;j++){
				samples[j].mutate(Budget, opcpu, opgc);
			}
			bubblesort();
			int max=splNum-1;
			individual temp=samples[max];
//			System.out.println("第"+(i+1)+"次换代：");
//			System.out.println(opcpu[temp.cpu].name+" "+opgc[temp.gcard].name+" "+" "+"性能加权总分："+temp.totalsc+" "+"总价钱:"+temp.totalcost);
//			System.out.println(temp.fitness+" "+temp.totalsc);
			
			
			for(int j=0;j<splNum;j++){
				if(highest.totalsc<samples[j].totalsc){highest=new individual(samples[j]);}
			}
			
			
		}
	}
	
	//冒泡排序
	public void bubblesort(){
		individual temp;
		for(int i=0;i<splNum;i++){
			for(int j=0;j<splNum-1-i;j++){
				if(samples[j].fitness>samples[j+1].fitness){
					temp=samples[j];
					samples[j]=samples[j+1];
					samples[j+1]=temp;
				}
			}
		}
	}
	
	//调试输出用函数
	public void output(hardware[] hd){
		for(int i=0;i<hd.length;i++){
			System.out.println(hd[i].name);
			System.out.println(hd[i].price);
			System.out.println(hd[i].score);
		}
	}
	
	//返回单个硬件最便宜的价格
	public double min(hardware[] a){
		if(a.length>0){
		double minimum=a[0].price;
		for(int i=0;i<a.length;i++){
			minimum=(minimum<a[i].price)?minimum:a[i].price;
		}
		return minimum;
	}
		else return Double.MAX_VALUE;
	}
	

}
